/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/
#include "stm32f4xx.h"
#include "iostream"
using namespace std;

class Point
{
	public:
	void setPoint(int x, int y)
	{
		xPos = x;
		yPos = y;
	}

	void flash_LED()
	{
		if(xPos > 5)
			GPIO_SetBits(GPIOD,GPIO_Pin_12);
		else
			GPIO_SetBits(GPIOD,GPIO_Pin_12 | GPIO_Pin_13);

		if(yPos > 5)
					GPIO_SetBits(GPIOD,GPIO_Pin_14);
				else
					GPIO_SetBits(GPIOD,GPIO_Pin_14 | GPIO_Pin_15);
	}

	private:
	int xPos;
	int yPos;
};

/*void delay(uint32_t t)
{
	uint32_t i;

	while(t--)
	{
		for(i=0xff;i>0;i--);
	}
}*/

int main(void)
{
	GPIO_InitTypeDef GPIO_Structure;
	Point M;

	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD,ENABLE);

	GPIO_Structure.GPIO_Pin = GPIO_Pin_12 | GPIO_Pin_13 | GPIO_Pin_14 | GPIO_Pin_15;
	GPIO_Structure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_Structure.GPIO_OType = GPIO_OType_PP;
	GPIO_Structure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_Structure.GPIO_Speed = GPIO_High_Speed;
	GPIO_Init(GPIOD, &GPIO_Structure);

	M.setPoint(3,7);
	M.flash_LED();

	for(;;)
	{
		;
	};
}
