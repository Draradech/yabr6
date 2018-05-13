#include "Ui.h"

#include <stdio.h>
#include <GL/freeglut.h>
#include "Tool.h"
#include "ChannelHandler.h"
#include "MeasurementTable.h"

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <strings.h>
#include <arpa/inet.h>

CUi::CUi(CTool* pTool, char* ip)
{
	m_pTool = pTool;
	m_eActiveOverlay = NoOverlay;
	m_iZoomOut = 1;
	m_iSkip = 1;
	
	initNet(ip);
}

CUi::~CUi(void)
{
}

void CUi::handleKey(char key)
{
	switch(m_eActiveOverlay)
	{
		case NoOverlay:
		{
			switch(key)
			{
				case 27:
				{
					glutLeaveMainLoop();
					break;
				}
				case '1':
				case '2':
				case '3':
				case '4':
				case '5':
				{
					m_eActiveOverlay = (Overlay_t) (OverlayChannelOne + (key - '1'));
					break;
				}
				case 'p':
				{
					m_eActiveOverlay = OverlayParameter;
					break;
				}
				case ' ':
				{
					sendPacket('x', 0);
					break;
				}
				case 'i':
				{
					if(m_iZoomOut > 1) m_iZoomOut--;
					break;
				}
				case 'o':
				{
					if(m_iZoomOut < 10) m_iZoomOut++;
					break;
				}
				// todo: check bounds
				case '+':
				{
					sendPacket('i', 1);
					break;
				}
				case '*':
				{
					sendPacket('i', 10);
					break;
				}
				case '-':
				{
					sendPacket('i', -1);
					break;
				}
				case '_':
				{
					sendPacket('i', -10);

					break;
				}
				case 'r':
				{
					sendPacket('r', 0);
					break;
				}
				default:
				{
					break;
				}
			}
			break;
		}
		case OverlayChannelOne:
		case OverlayChannelTwo:
		case OverlayChannelThree:
		case OverlayChannelFour:
		case OverlayChannelFive:
		{
			switch(key)
			{
				case 27:
				{
					m_eActiveOverlay = NoOverlay;
					break;
				}
				default:
				{
					// todo: if in range of measurement values, choose -> else show message
					sendPacket('c', (m_eActiveOverlay - OverlayChannelOne) << 8 | key);
					m_eActiveOverlay = NoOverlay;
					break;
				}
			}
			break;
		}
		case OverlayParameter:
		{
			switch(key)
			{
				case 27:
				{
					m_eActiveOverlay = NoOverlay;
					break;
				}
				default:
				{
					// todo: if in range...
					sendPacket('p', key);
					m_eActiveOverlay = NoOverlay;
					break;
				}
			}
			break;
		}
	}
	glutPostRedisplay();
}

void CUi::checkKeyRepeat(void)
{
   if(m_cKeyRepeat)
   {
      if(m_iKeyRepeatTimer == 0)
      {
         m_iKeyRepeatTimer = 2;
         handleKey(m_cKeyRepeat);
      }
      else
      {
         m_iKeyRepeatTimer--;
      }
   }
}

void CUi::keyDown(char key)
{
   m_cKeyRepeat = key;
   m_iKeyRepeatTimer = 30;
   handleKey(m_cKeyRepeat);
}

void CUi::keyUp(char key)
{
   m_cKeyRepeat = 0;
}

void CUi::mouseButton(int button, int state)
{
	if(button == GLUT_LEFT_BUTTON && state == GLUT_DOWN)
	{
	}
	if(button == GLUT_RIGHT_BUTTON && state == GLUT_DOWN)
	{
	}
}

void CUi::mouseMotion(int x, int y)
{
	m_iMouseX = x;
	m_iMouseY = y;
}

void CUi::draw(int width, int height)
{
	switch(m_eActiveOverlay)
	{
		case NoOverlay:
		{
			break;
		}
		case OverlayChannelOne:
		case OverlayChannelTwo:
		case OverlayChannelThree:
		case OverlayChannelFour:
		case OverlayChannelFive:
		{
			glColor3f(0.0f, 0.0f, 0.0f);
			glRectf(GLfloat(width / 10 + 1), GLfloat(height / 10 + 1), GLfloat(9 * width / 10), GLfloat(9 * height / 10 - 1));

			sprintf(m_sBuffer, "Messwertauswahl Kanal %d", m_eActiveOverlay - OverlayChannelOne + 1);
			glColor3f(1.0f, 1.0f, 1.0f);
			glRasterPos2f(GLfloat(width / 10 + 1 + 40), GLfloat(height / 10 + 1 + 14 + 40));
			glutBitmapString(GLUT_BITMAP_HELVETICA_18, (unsigned char*)m_sBuffer);

			for(int i = 0; measurementTable[i].id; ++i)
			{
				sprintf(m_sBuffer, "%c: %s", measurementTable[i].id, measurementTable[i].name.c_str());
                glColor3f(1.0f, 1.0f, 1.0f);
				glRasterPos2f(GLfloat(width / 10 + 1 + 40), GLfloat(height / 10 + 1 + 14 + 40 + 24 * (i + 2)));
				glutBitmapString(GLUT_BITMAP_HELVETICA_18, (unsigned char*)m_sBuffer);
			}

			break;
		}
		case OverlayParameter:
		{
			glColor3f(0.0f, 0.0f, 0.0f);
			glRectf(GLfloat(width / 10 + 1), GLfloat(height / 10 + 1), GLfloat(9 * width / 10), GLfloat(9 * height / 10 - 1));

			sprintf(m_sBuffer, "Parameterauswahl");
			glColor3f(1.0f, 1.0f, 1.0f);
			glRasterPos2f(GLfloat(width / 10 + 1 + 40), GLfloat(height / 10 + 1 + 14 + 40));
			glutBitmapString(GLUT_BITMAP_HELVETICA_18, (unsigned char*)m_sBuffer);

			for(int i = 0; parameterTable[i].id; ++i)
			{
				sprintf(m_sBuffer, "%c: %s", parameterTable[i].id, parameterTable[i].name.c_str());
                glColor3f(1.0f, 1.0f, 1.0f);
				glRasterPos2f(GLfloat(width / 10 + 1 + 40), GLfloat(height / 10 + 1 + 14 + 40 + 24 * (i + 2)));
				glutBitmapString(GLUT_BITMAP_HELVETICA_18, (unsigned char*)m_sBuffer);
			}

			break;
		}
	}
}

void CUi::initNet(char* ip)
{
   struct sockaddr_in servaddr;

   udpfd = socket(AF_INET, SOCK_DGRAM, 0);

   bzero(&servaddr, sizeof(servaddr));
   servaddr.sin_family = AF_INET;
   servaddr.sin_port = htons(23456);
   inet_aton(ip, (in_addr*)&servaddr.sin_addr.s_addr);

   connect(udpfd, (sockaddr*)&servaddr, sizeof(servaddr));
}

void CUi::sendPacket(uint8_t command, int32_t data)
{
   struct
   {
     uint8_t type;
     int32_t data;
   } dataout;

   dataout.type = command;
   dataout.data = data;
   
   send(udpfd, &dataout, sizeof(dataout), MSG_DONTWAIT);
}

int CUi::getZoomOut()
{
	return m_iZoomOut;
}
