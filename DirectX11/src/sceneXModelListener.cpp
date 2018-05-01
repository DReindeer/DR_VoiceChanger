// ======== ======== ======== ======== ======== ======== ======== ========
//
//
//	title : Xモデルのシーン
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
// 初期化
// -------- -------- -------- -------- -------- -------- -------- --------
void CSceneXModelListener::Init(void)
{
	// 親の初期化
	CSceneXModel::Init();
}

// -------- -------- -------- -------- -------- -------- -------- --------
// 終了
// -------- -------- -------- -------- -------- -------- -------- --------
void CSceneXModelListener::Uninit(void)
{
	// 親の終了
	CSceneXModel::Uninit();
}

// -------- -------- -------- -------- -------- -------- -------- --------
// 更新
// -------- -------- -------- -------- -------- -------- -------- --------
void CSceneXModelListener::Update(void)
{
	// リスナーの設定
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
// 描画
// -------- -------- -------- -------- -------- -------- -------- --------
void CSceneXModelListener::Draw(void)
{
	// 親の描画
	CSceneXModel::Draw();
}

// -------- -------- -------- -------- -------- -------- -------- --------
// 作成処理
// -------- -------- -------- -------- -------- -------- -------- --------
CSceneXModelListener *CSceneXModelListener::Create(const XMFLOAT3 &pos, const XMFLOAT3 &rot, const XMFLOAT3 &scl, const std::string &strFilePass, int priority)
{
	// CSceneXModelListenerの生成
	CSceneXModelListener *pXModel;
	pXModel = new CSceneXModelListener(priority);
	pXModel->Init();

	pXModel->SetPos(pos);
	pXModel->SetRot(rot);
	pXModel->SetScl(scl);
	pXModel->m_strFilePass = strFilePass;

	// モデルの作成
	CManager::GetXModelManager()->SetModel(strFilePass);

	// 頂点, シェーダーの作成
	pXModel->CreateVtxBuffer();

	// リスナーの設定
	XA2Listener *pListener = new XA2Listener;
	pListener->SetCone(X3DAUDIO_PI, 2.f, 1.5f);
	XA2Manager::GetListenerManager()->AddListener(pListener, pXModel);

	return pXModel;
}
