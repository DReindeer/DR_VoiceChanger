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

// �萔��`
//--------------------------------------------------------------------------------
static const int MAX_LISTENER = 1;

// ���X�i�[�Ǘ�
//--------------------------------------------------------------------------------
class XA2Listener;
class XA2ListenerManager
{
public:
	XA2ListenerManager() {}
	~XA2ListenerManager() {}

	// �I��
	//--------------------------------------------------------------------------------
	void Uninit();

	// �S�擾
	//--------------------------------------------------------------------------------
	std::list<XA2Listener*> &GetListeners() { return m_pListeners; }

	// ID�w��擾
	//--------------------------------------------------------------------------------
	XA2Listener* GetListener(void *id);

	// �ǉ�
	//--------------------------------------------------------------------------------
	void AddListener(XA2Listener* pListener, void* thisPointerID);

private:
	static std::list<XA2Listener*> m_pListeners;
};

#endif
