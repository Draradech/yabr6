#pragma once

#include <stdint.h>

class CCanvas;
class CUi;
class CChannelHandler;

class CTool
{
public:
	CTool(char* ip);
	~CTool(void);
	CCanvas* getCanvas();
	CUi* getUi();
	CChannelHandler* getChannelHandler();
	void remoteTimeTick();
	int getRemoteTime();

private:
	CCanvas* m_pCanvas;
	CUi* m_pUi;
	CChannelHandler* m_pChannelHandler;
	int m_iRemoteTime;
};
