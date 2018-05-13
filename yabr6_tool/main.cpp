#include <stdio.h>
#include <GL/freeglut.h>

#include "Tool.h"
#include "Canvas.h"
#include "Ui.h"
#include "ChannelHandler.h"

static CTool* pTool;
static int remoteTimeOld;
static int timeOld;

void display()
{
   pTool->getCanvas()->display();
   pTool->getUi()->checkKeyRepeat();
}

void idle()
{
   pTool->getChannelHandler()->readRemote();

   int remoteTime = pTool->getRemoteTime();
   int zoomout = pTool->getUi()->getZoomOut();
   int time = glutGet(GLUT_ELAPSED_TIME);

   if(((remoteTimeOld / zoomout) != (remoteTime / zoomout)) || (time - timeOld > 1000))
   {
      glutPostRedisplay();
      timeOld = time;
   }

   remoteTimeOld = remoteTime;
}

void keyboard(unsigned char key, int x, int y)
{
   pTool->getUi()->keyDown(key);
}

void keyboardUp(unsigned char key, int x, int y)
{
   pTool->getUi()->keyUp(key);
}

void mouse(int button, int state, int x, int y)
{
   pTool->getUi()->mouseButton(button, state);
}

void passiveMotion(int x, int y)
{
   pTool->getUi()->mouseMotion(x, y);
}

void reshape(int w, int h)
{
   pTool->getCanvas()->reshape(w, h);
}

int main(int argc, char** argv)
{
    glutInit(&argc, argv);

    pTool = new CTool(argv[1]);

    glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE);

    glutSetOption(GLUT_ACTION_ON_WINDOW_CLOSE, GLUT_ACTION_CONTINUE_EXECUTION);

    glutCreateWindow("yabr measurement tool");
    //glutFullScreen();

    glutIgnoreKeyRepeat(true);

    glutDisplayFunc(display);
    glutIdleFunc(idle);
    glutReshapeFunc(reshape);
    glutKeyboardFunc(keyboard);
    glutKeyboardUpFunc(keyboardUp);
    glutMouseFunc(mouse);
    glutPassiveMotionFunc(passiveMotion);

    pTool->getUi()->sendPacket('m', 0);

    glutMainLoop();

    delete pTool;

    return 0;
}
