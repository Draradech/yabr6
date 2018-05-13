#pragma once

#include <sstream>
#include <stdint.h>

typedef enum
{
	NoOverlay,
	OverlayChannelOne,
	OverlayChannelTwo,
	OverlayChannelThree,
	OverlayChannelFour,
	OverlayChannelFive,
	OverlayParameter,
	NumberOfOverlays
} Overlay_t;

class CTool;

class CUi
{
public:
	CUi(CTool* pTool, char* ip);
	~CUi(void);

	void keyDown(char key);
	void keyUp(char key);
   void checkKeyRepeat();
	void mouseButton(int button, int state);
	void mouseMotion(int x, int y);
	void draw(int width, int height);
	int getZoomOut();
	void sendPacket(uint8_t command, int32_t data);

private:
   void handleKey(char key);


void initNet(char* ip);
   
	CTool* m_pTool;
	int m_iMouseX, m_iMouseY;
	char m_sBuffer[512];
	Overlay_t m_eActiveOverlay;
	int m_iZoomOut;
	int m_iSkip;
   char m_cKeyRepeat;
   int m_iKeyRepeatTimer;

	int udpfd;
};
