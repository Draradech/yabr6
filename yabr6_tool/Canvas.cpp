#include "Canvas.h"

#include <stdio.h>
#include <GL/freeglut.h>
#include "Tool.h"
#include "Ui.h"
#include "ChannelHandler.h"

#define BORDER 15
#define LEFT 250
#define LEFTTOP 25
#define RIGHTBOTTOM 25
#define GRID_DIVISIONS_X 10
#define GRID_DIVISIONS_Y 10
#define CHANNELS 5

CCanvas::CCanvas(CTool* pTool)
{
	m_pTool = pTool;
   glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	m_iFrameCounter = 0;
	m_iTimeOld = glutGet(GLUT_ELAPSED_TIME);
	m_iFps = 0;
}

CCanvas::~CCanvas(void)
{
}

void CCanvas::display()
{
    glClear(GL_COLOR_BUFFER_BIT);

    glLoadIdentity();
    glTranslatef(0.5f, 0.5f, 0.0f); // pixel-perfect 2D drawing - haha, needs work, see drawLineV and drawLineH

    // draw Grid
	glPushMatrix();
	glTranslatef(GLfloat(m_iGridOffsetX), GLfloat(m_iGridOffsetY), 0);
	glBegin(GL_LINES);
        glColor3f(0.5f, 0.5f, 0.5f);
        for(int x = m_iSubGridWidth; x < m_iGridWidth; x = x + m_iSubGridWidth)
        {
            drawLineV(0, m_iGridHeight, x);
        }
        for(int y = m_iSubGridHeight; y < m_iGridHeight; y = y + m_iSubGridHeight)
        {
            drawLineH(0, m_iGridWidth, y);
        }
        glColor3f(1.0f, 1.0f, 1.0f);
        drawLineH(0, m_iGridWidth, 0);
        drawLineH(0, m_iGridWidth, m_iGridHeight);
        drawLineV(0, m_iGridHeight, 0);
        drawLineV(0, m_iGridHeight, m_iGridWidth);
    glEnd();
	glPopMatrix();

	// draw Channelbox
	glPushMatrix();
	glTranslatef(GLfloat(m_iChannelsOffsetX), GLfloat(m_iChannelsOffsetY), 0.0f);
	glBegin(GL_LINES);
        glColor3f(0.5f, 0.5f, 0.5f);
        for(int y = m_iChannelHeight; y < m_iChannelsHeight; y = y + m_iChannelHeight)
        {
            drawLineH(0, m_iChannelsWidth, y);
        }
        glColor3f(1.0f, 1.0f, 1.0f);
        drawLineH(0, m_iChannelsWidth, 0);
        drawLineH(0, m_iChannelsWidth, m_iChannelsHeight);
        drawLineV(0, m_iChannelsHeight, 0);
        drawLineV(0, m_iChannelsHeight, m_iChannelsWidth);
    glEnd();
	glPopMatrix();

	// draw lefttop
	glPushMatrix();
	glTranslatef(GLfloat(m_iLefttopOffsetX), GLfloat(m_iLefttopOffsetY), 0.0f);
	glBegin(GL_LINES);
        glColor3f(1.0f, 1.0f, 1.0f);
        drawLineH(0, m_iChannelsWidth, 0);
        drawLineH(0, m_iChannelsWidth, m_iLefttopHeight);
        drawLineV(0, m_iLefttopHeight, 0);
        drawLineV(0, m_iLefttopHeight, m_iChannelsWidth);
    glEnd();
	glPopMatrix();

	// draw rightbottom
	glPushMatrix();
	glTranslatef(GLfloat(m_iRightbottomOffsetX), GLfloat(m_iRightbottomOffsetY), 0.0f);
	glBegin(GL_LINES);
        glColor3f(1.0f, 1.0f, 1.0f);
        drawLineH(0, m_iGridWidth, 0);
        drawLineH(0, m_iGridWidth, m_iRightbottomHeight);
        drawLineV(0, m_iRightbottomHeight, 0);
        drawLineV(0, m_iRightbottomHeight, m_iGridWidth);
    glEnd();
	glPopMatrix();

	// draw FPS
	m_iFrameCounter++;

	int iTime = glutGet(GLUT_ELAPSED_TIME);

	if(iTime > m_iTimeOld + 1000)
	{
		m_iFps = m_iFrameCounter;
		m_iFrameCounter = 0;
		m_iTimeOld = m_iTimeOld + 1000;
	}

	sprintf(m_sBuffer, "%d fps", m_iFps);

	glColor3f(1.0f, 1.0f, 1.0f);
	glRasterPos2f(GLfloat(m_iLefttopOffsetX + 6), GLfloat(m_iLefttopOffsetY + m_iLefttopHeight/2) + 6);
	glutBitmapString(GLUT_BITMAP_HELVETICA_18, (unsigned char*)m_sBuffer);

	// draw Parameter
	glColor3f(1.0f, 1.0f, 1.0f);
	glRasterPos2f(GLfloat(m_iRightbottomOffsetX + 6), GLfloat(m_iRightbottomOffsetY + m_iRightbottomHeight/2) + 6);
	m_pTool->getChannelHandler()->drawParameter();

	// draw Channels
	glPushMatrix();
	glTranslatef(GLfloat(m_iChannelsOffsetX), GLfloat(m_iChannelsOffsetY), 0);
	m_pTool->getChannelHandler()->drawChannels(m_iChannelHeight);
	glPopMatrix();

	// draw Graphs
	glPushMatrix();
	glTranslatef(GLfloat(m_iGridOffsetX), GLfloat(m_iGridOffsetY), 0);
	m_pTool->getChannelHandler()->drawGraphs(m_iGridWidth, m_iGridHeight);
	glPopMatrix();

	// draw UI Overlays
	glPushMatrix();
	glTranslatef(GLfloat(m_iGridOffsetX), GLfloat(m_iGridOffsetY), 0);
    m_pTool->getUi()->draw(m_iGridWidth, m_iGridHeight);
	glPopMatrix();

    // flush and swap buffers
	glFlush();
    glutSwapBuffers();
}

void CCanvas::reshape(int w, int h)
{
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, w, h, 0, -1, 1); // left, right, bottom, top, near, far
    glMatrixMode(GL_MODELVIEW);

    //total
	m_iWidth = w;
    m_iHeight = h;

	// grid
	m_iSubGridWidth = (m_iWidth - (BORDER + LEFT + BORDER + BORDER)) / GRID_DIVISIONS_X;
    m_iSubGridHeight = (m_iHeight - (BORDER + BORDER + RIGHTBOTTOM + BORDER)) / GRID_DIVISIONS_Y;

    m_iGridWidth = GRID_DIVISIONS_X * m_iSubGridWidth;
    m_iGridHeight = GRID_DIVISIONS_Y * m_iSubGridHeight;

	m_iGridOffsetX = m_iWidth - BORDER - m_iGridWidth;
	m_iGridOffsetY = BORDER;

	//channels
	m_iChannelHeight = (m_iHeight - (BORDER + LEFTTOP + BORDER + BORDER)) / CHANNELS;

	m_iChannelsHeight = CHANNELS * m_iChannelHeight;
	m_iChannelsWidth = m_iWidth - BORDER - m_iGridWidth - BORDER - BORDER;

	m_iChannelsOffsetY = m_iHeight - BORDER - m_iChannelsHeight;
	m_iChannelsOffsetX = BORDER;

	//lefttop
	m_iLefttopHeight = m_iHeight - BORDER - m_iChannelsHeight - BORDER - BORDER;
	
	m_iLefttopOffsetY = BORDER;
	m_iLefttopOffsetX = BORDER;

	//rightbottom
	m_iRightbottomHeight = m_iHeight - BORDER - m_iGridHeight - BORDER - BORDER;
	
	m_iRightbottomOffsetY = BORDER + m_iGridHeight + BORDER;
	m_iRightbottomOffsetX = BORDER + m_iChannelsWidth + BORDER;
}

void CCanvas::drawLineV(int y1, int y2, int x)
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

void CCanvas::drawLineH(int x1, int x2, int y)
{
    if(x1 < x2)
    {
        x2++;
		glVertex2i(x1, y);
        glVertex2i(x2, y);
    }
    else
    {
        x1++;
        glVertex2i(x2, y);
        glVertex2i(x1, y);
    }
}
