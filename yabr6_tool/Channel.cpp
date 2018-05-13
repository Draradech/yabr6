#include <stdio.h>
#include <GL/freeglut.h>
#include "Channel.h"
#include "MeasurementTable.h"
#include "Tool.h"
#include "Ui.h"

CChannel::CChannel(CTool* pTool)
{
	m_pTool = pTool;
	for(int i = 0; i < HISTORY; ++i)
	{
		m_vValue[i] = 0.0f;
	}
}

CChannel::~CChannel(void)
{
}

void CChannel::setId(unsigned char id)
{
   if(m_iId == id) return;
   
	m_iIndex = 0;
	for(int index = 0; measurementTable[index].id; index++)
	{
		if(measurementTable[index].id == id)
		{
			m_iIndex = index;
		}
	}
	m_iId = measurementTable[m_iIndex].id;

	for(int i = 0; i < HISTORY; ++i)
	{
		m_vValue[i] = 0.0f;
	}
	m_fLastValue = 0.0f;
}

void CChannel::setColor(float r, float g, float b)
{
	m_fR = r;
	m_fG = g;
	m_fB = b;
}

void CChannel::setValue(int value)
{
	int remoteTime = m_pTool->getRemoteTime();
	int index = remoteTime % HISTORY;
	measurement_t info = measurementTable[m_iIndex];
	m_vValue[index] = (value << info.rightshift) * info.resolution;
	m_fLastValue = m_vValue[index];
}

void CChannel::drawGraph(int width, int height)
{
	int zoomOut = m_pTool->getUi()->getZoomOut();

	int remoteTime = m_pTool->getRemoteTime();
	int remoteTimeRightEdge = remoteTime / zoomOut * zoomOut;
	int remoteTimeLeftEdge = remoteTimeRightEdge - width * zoomOut;

	int y1, y2;
	int index1, index2;

	measurement_t info = measurementTable[m_iIndex];

	glBegin(GL_LINES);
	glColor3f(m_fR, m_fG, m_fB);
	for(int x = 1; x < width; ++x)
	{
		index1 = remoteTimeLeftEdge + (x - 1) * zoomOut;
		while(index1 < 0) index1 += HISTORY;
		index1 %= HISTORY;
		y1 = height - (int)((m_vValue[index1] - info.minvalue) / (info.maxvalue - info.minvalue) * height);
		index2 = remoteTimeLeftEdge + x * zoomOut;
		while(index2 < 0) index2 += HISTORY;
		index2 %= HISTORY;
		y2 = height - (int)((m_vValue[index2] - info.minvalue) / (info.maxvalue - info.minvalue) * height);
		drawLineV(y1, y2, x);
	}
	glEnd();
}

void CChannel::drawInfo()
{
	measurement_t info = measurementTable[m_iIndex];

	int remoteTime = m_pTool->getRemoteTime();
	int index = remoteTime % HISTORY;

	sprintf(m_sBuffer, "%s\n\n%.2f %s\n\nMin: %.1f %s\nMax: %.1f %s", info.name.c_str(), m_fLastValue, info.unit.c_str(), info.minvalue, info.unit.c_str(), info.maxvalue, info.unit.c_str());
	glColor3f(m_fR, m_fG, m_fB);
	glRasterPos2f(10.0, 25.0);
	glutBitmapString(GLUT_BITMAP_HELVETICA_18, (unsigned char*)m_sBuffer);
}

void CChannel::drawLineV(int y1, int y2, int x)
{
    if(y1 < y2)
    {
        y2++;
        glVertex2i(x, y1);
        glVertex2i(x, y2);
    }
    else
    {
        y1++;
        glVertex2i(x, y2);
        glVertex2i(x, y1);
    }
}
