#include <stdio.h>
#include <GL/freeglut.h>
#include "Parameter.h"
#include "MeasurementTable.h"
#include "Tool.h"
#include "Ui.h"

CParameter::CParameter(CTool* pTool)
{
	m_pTool = pTool;
}

CParameter::~CParameter(void)
{
}

void CParameter::setId(unsigned char id)
{
   if(m_iId == id) return;

	m_iIndex = 0;
	for(int index = 0; parameterTable[index].id; index++)
	{
		if(parameterTable[index].id == id)
		{
			m_iIndex = index;
		}
	}
	m_iId = parameterTable[m_iIndex].id;
}

void CParameter::setValue(int value)
{
	measurement_t info = parameterTable[m_iIndex];
	m_fValue = (value << info.rightshift) * info.resolution;
}

void CParameter::draw()
{
	measurement_t info = parameterTable[m_iIndex];

	sprintf(m_sBuffer, "%s %.2f %s", info.name.c_str(), m_fValue, info.unit.c_str());
	glutBitmapString(GLUT_BITMAP_HELVETICA_18, (unsigned char*)m_sBuffer);
}
