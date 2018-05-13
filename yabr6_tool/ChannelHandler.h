#pragma once

#define NUMCHANNELS 5

class CTool;
class CChannel;
class CParameter;

class CChannelHandler
{
public:
	CChannelHandler(CTool* pTool);
	~CChannelHandler(void);
	void readRemote();
	void setId(unsigned char channel, unsigned char id);
	void setParameterId(unsigned char id);
	void drawGraphs(int width, int height);
	void drawChannels(int channelHeight);
	void drawParameter();
	void togglePause();

private:
   void initNet(void);
	CTool* m_pTool;
	CChannel* m_vChannel[NUMCHANNELS];
	CParameter* m_pParameter;

	int m_iPause;
   int udpfd;
};
