// ======== ======== ======== ======== ======== ======== ======== ========
//
//
//	title : X���f���̃V�[��
//	Auter : KENSUKE WATANABE
//
//
// ======== ======== ======== ======== ======== ======== ======== ========
//#include <tchar.h>
#include "manager.h"
#include "texManager.h"
#include "modelManager.h"
#include "XModelLoader.h"
#include "sceneXModelListener.h"
#include "renderer.h"
#include "camera.h"
#include "utility.h"

#include "../Libs/DR_XA2/xa2ListenerManager.h"
#include "../Libs/DR_XA2/xa2Listener.h"

// -------- -------- -------- -------- -------- -------- -------- --------
// ������
// -------- -------- -------- -------- -------- -------- -------- --------
void CSceneXModelListener::Init(void)
{
	// �e�̏�����
	CSceneXModel::Init();
}

// -------- -------- -------- -------- -------- -------- -------- --------
// �I��
// -------- -------- -------- -------- -------- -------- -------- --------
void CSceneXModelListener::Uninit(void)
{
	// �e�̏I��
	CSceneXModel::Uninit();
}

// -------- -------- -------- -------- -------- -------- -------- --------
// �X�V
// -------- -------- -------- -------- -------- -------- -------- --------
void CSceneXModelListener::Update(void)
{
	// ���X�i�[�̐ݒ�
	XA2Listener *pListener = XA2Manager::GetListenerManager()->GetListener(this);
	if (pListener)
	{
		pListener->SetPos(m_pos);
		XMFLOAT3 flont = XM::F3::Normalize(XMFLOAT3(cos(m_rot.y), 0.f, sin(m_rot.y)));
		pListener->SetFront(flont);
		pListener->SetTop(XMFLOAT3(0.f, 1.f, 0.f));
	}
}

// -------- -------- -------- -------- -------- -------- -------- --------
// �`��
// -------- -------- -------- -------- -------- -------- -------- --------
void CSceneXModelListener::Draw(void)
{
	// �e�̕`��
	CSceneXModel::Draw();
}

// -------- -------- -------- -------- -------- -------- -------- --------
// �쐬����
// -------- -------- -------- -------- -------- -------- -------- --------
CSceneXModelListener *CSceneXModelListener::Create(const XMFLOAT3 &pos, const XMFLOAT3 &rot, const XMFLOAT3 &scl, const std::string &strFilePass, int priority)
{
	// CSceneXModelListener�̐���
	CSceneXModelListener *pXModel;
	pXModel = new CSceneXModelListener(priority);
	pXModel->Init();

	pXModel->SetPos(pos);
	pXModel->SetRot(rot);
	pXModel->SetScl(scl);
	pXModel->m_strFilePass = strFilePass;

	// ���f���̍쐬
	CManager::GetXModelManager()->SetModel(strFilePass);

	// ���_, �V�F�[�_�[�̍쐬
	pXModel->CreateVtxBuffer();

	// ���X�i�[�̐ݒ�
	XA2Listener *pListener = new XA2Listener;
	pListener->SetCone(X3DAUDIO_PI, 2.f, 1.5f);
	XA2Manager::GetListenerManager()->AddListener(pListener, pXModel);

	return pXModel;
}
