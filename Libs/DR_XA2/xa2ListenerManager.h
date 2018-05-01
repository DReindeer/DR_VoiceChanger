//================================================================================
//
// Auter : KENSUKE WATANABE
//
//================================================================================
#ifndef _XA2LISTENERMANAGER_H_
#define _XA2LISTENERMANAGER_H_

#include <list>
#include "math.h"
// XAudio2
#include "xa2Manager.h"

// 定数定義
//--------------------------------------------------------------------------------
static const int MAX_LISTENER = 1;

// リスナー管理
//--------------------------------------------------------------------------------
class XA2Listener;
class XA2ListenerManager
{
public:
	XA2ListenerManager() {}
	~XA2ListenerManager() {}

	// 終了
	//--------------------------------------------------------------------------------
	void Uninit();

	// 全取得
	//--------------------------------------------------------------------------------
	std::list<XA2Listener*> &GetListeners() { return m_pListeners; }

	// ID指定取得
	//--------------------------------------------------------------------------------
	XA2Listener* GetListener(void *id);

	// 追加
	//--------------------------------------------------------------------------------
	void AddListener(XA2Listener* pListener, void* thisPointerID);

private:
	static std::list<XA2Listener*> m_pListeners;
};

#endif
