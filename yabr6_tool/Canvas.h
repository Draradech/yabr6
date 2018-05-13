#pragma once

class CTool;

class CCanvas
{
public:
	CCanvas(CTool* pTool);
	~CCanvas(void);
	void display();
	void reshape(int w, int h);
	void drawLineV(int y1, int y2, int x);
	void drawLineH(int x1, int x2, int y);

private:
	CTool* m_pTool;

	int m_iWidth;
    int m_iHeight;
    int m_iSubGridWidth;
    int m_iSubGridHeight;
    int m_iGridWidth;
    int m_iGridHeight;
    int m_iGridOffsetX;
    int m_iGridOffsetY;
    int m_iChannelHeight;
	int m_iChannelsHeight;
	int m_iChannelsWidth;
	int m_iChannelsOffsetY;
	int m_iChannelsOffsetX;
	int m_iLefttopHeight;
	int m_iLefttopOffsetY;
	int m_iLefttopOffsetX;
	int m_iRightbottomHeight;
	int m_iRightbottomOffsetY;
	int m_iRightbottomOffsetX;

	int m_iFrameCounter, m_iTimeOld, m_iFps;
	char m_sBuffer[512];
};
