#include "Tool.h"

#include "Canvas.h"
#include "Ui.h"
#include "ChannelHandler.h"

CTool::CTool(char* ip)
{
	m_pCanvas = new CCanvas(this);
	m_pUi = new CUi(this, ip);
	m_pChannelHandler = new CChannelHandler(this);

	m_iRemoteTime = 0;
}

CTool::~CTool(void)
{
	delete m_pChannelHandler;
	delete m_pUi;
	delete m_pCanvas;
}

CCanvas* CTool::getCanvas()
{
	return m_pCanvas;
}

CUi* CTool::getUi()
{
	return m_pUi;
}

void CTool::remoteTimeTick()
{
	m_iRemoteTime++;
}

int CTool::getRemoteTime()
{
	return m_iRemoteTime;
}
CChannelHandler* CTool::getChannelHandler()
{
	return m_pChannelHandler;
}
