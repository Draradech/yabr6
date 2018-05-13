#pragma once

#define HISTORY 30000

class CTool;

class CChannel
{
public:
	CChannel(CTool* pTool);
	~CChannel(void);
	void setId(unsigned char id);
	void setColor(float r, float g, float b);
	void setValue(int value);
	void drawGraph(int width, int height);
	void drawInfo();
	void drawLineV(int y1, int y2, int x);

private:
	CTool* m_pTool;
	float m_vValue[HISTORY];
	float m_fLastValue;
	float m_fR, m_fG, m_fB;
	unsigned char m_iId;
	unsigned char m_iIndex;
	char m_sBuffer[512];
};
