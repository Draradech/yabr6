#pragma once

class CTool;

class CParameter
{
public:
	CParameter(CTool* pTool);
	~CParameter(void);
	void setId(unsigned char id);
	void draw();
	void setValue(int value);

private:
	CTool* m_pTool;
	unsigned char m_iId;
	unsigned char m_iIndex;
	float m_fValue;
	char m_sBuffer[512];
};
