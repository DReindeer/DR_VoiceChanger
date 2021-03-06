//================================================================================
//
// Auter : KENSUKE WATANABE
// Data  : 2018/01/31
//
//================================================================================
#ifndef _XA2SOURCEVOICE2D_H_
#define _XA2SOURCEVOICE2D_H_

// Interface
#include "xa2SourceVoiceInterface.h"
// STL
#include <list>

// 前方宣言
//--------------------------------------------------------------------------------
class XA2LoadAudio;

// 2Dソースボイス : [継承]ソースボイスインターフェイス
//--------------------------------------------------------------------------------
class XA2SourceVoice2D : public XA2SourceVoiceInterface
{
public:
	XA2SourceVoice2D() {}
	~XA2SourceVoice2D() {}

	IXAudio2SourceVoice *Create(std::string strFilePath, int loopCount, XA2LoadAudio *pLoadWave)override;
	IXAudio2SourceVoice *CreatePlay(std::string strFilePath, int loopCount, XA2LoadAudio *pLoadWave)override;

	void Update()override;
	void Polling()override;
};

#endif
