//================================================================================
//
// Auter : KENSUKE WATANABE
// Data  : 2018/01/02
//
//================================================================================
#ifndef _XA2SOURCEVOICEINTERFACE_H_
#define _XA2SOURCEVOICEINTERFACE_H_

#include "../Libs/Microsoft_DirectX_SDK_(June 2010)/Include/XAudio2.h"
#include <string>
#include <list>
#include "xa2LoadWave.h"

#define MAX_SAUCEVOICE (256)

// 前方宣言
//--------------------------------------------------------------------------------
class XA2SourceVoiceInterface;

// ソースボイスデータ - 基底
//--------------------------------------------------------------------------------
class XA2SourceVoiceData
{
public:
	// 終了
	void Uninit()
	{
		m_strSoundFilePath.clear();
		// ソースボイスの破棄
		m_pSourceVoice->DestroyVoice();
		m_pSourceVoice = nullptr;
	}

	// 取得
	const std::string &GetFilePass() { return m_strSoundFilePath; }			// ファイルパス
	IXAudio2SourceVoice *GetSourceVoice() { return m_pSourceVoice; }		// ソースボイス
	XA2LoadAudio *GetWaveData() { return  m_pWaveData; }						// waveデータのポインタ

	// 設定
	void SetFilePass(const std::string &filePass) { m_strSoundFilePath = filePass; }				// ファイルパス
	void SetSourceVoice(IXAudio2SourceVoice *pSourceVoice) { m_pSourceVoice = pSourceVoice; }		// ソースボイス
	void SetWaveData(XA2LoadAudio *pWaveData) { m_pWaveData = pWaveData; }							// waveデータのポインタ

	// ソースボイス
	void FlushSourceBuffers() {if(m_pSourceVoice)m_pSourceVoice->FlushSourceBuffers();}

	// wave
	void Play(XA2SourceVoiceInterface* pSourceVoiceInterface){ 	// 再生
		if(m_pWaveData)m_pWaveData->Play(this, pSourceVoiceInterface);
	}
	void Stop() {												// 停止
		if(m_pWaveData)m_pWaveData->Stop(m_pSourceVoice);
	}										

protected:
	std::string			m_strSoundFilePath;				// ファイルパス
	IXAudio2SourceVoice *m_pSourceVoice	= nullptr;		// ソースボイス
	XA2LoadAudio			*m_pWaveData	= nullptr;		// waveデータのポインタ
};

// ソースボイスインターフェイス - 基底
//--------------------------------------------------------------------------------
class XA2SourceVoiceInterface
{
public:
	XA2SourceVoiceInterface();
	~XA2SourceVoiceInterface();

	// 生成
	virtual IXAudio2SourceVoice *Create(std::string strFilePath, int loopCount, XA2LoadAudio *pLoadWave) = 0;
	virtual IXAudio2SourceVoice *CreatePlay(std::string strFilePath, int loopCount, XA2LoadAudio *pLoadWave) = 0;

	virtual void Update() = 0;				// 更新
	void Uninit();							// 終了
	void StopAndUninit();					// 停止して終了

	HRESULT Play(std::string strFilePath);	// 開始
	void Stop(std::string strFilePath);		// 停止
	void StopAll();							// 全停止

	void ReleaseEndSE();					// 停止したSEの解放
	virtual void Polling() = 0;				// 別スレッドポーリング処理

	// 設定
	void SetPitch(std::string filePath, float ratio = 1.f);
	void SetVolume(std::string filePath, float volume = 1.f);

	// サブミックスボイス
	IXAudio2SubmixVoice *GetSubmixVoice() { return m_pSubmixVoice; }

	// ソースボイスデータ追加
	void AddSourceVoiceData(XA2SourceVoiceData* pSourceVoiceData) { m_sourceVoices.push_back(pSourceVoiceData); }

protected:
	// ソースボイスのリスト
	std::list<XA2SourceVoiceData*> m_sourceVoices;

	// このクラス(インスタンス)に適用するサブミックス
	IXAudio2SubmixVoice *m_pSubmixVoice = nullptr;
};

#endif

