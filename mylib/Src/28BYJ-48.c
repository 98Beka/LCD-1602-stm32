#include "28BYJ-48.h"

void GPIO_28BYJ_48_Init(void)
{
	RCC->APB2ENR |= RCC_APB2ENR_IOPAEN;//разрешаем тактирование
	//output
	GPIOA->CRL &=~ GPIO_CRL_CNF1;//сбрасывем оба бита CNF- A1 в 0//push-pull
	GPIOA->CRL |=GPIO_CRL_MODE1_1;//регистор на выход с частатой 2 MГц//устанавливаем, 1-й бит MODE1- A1, в 1

	GPIOA->CRL &=~GPIO_CRL_CNF2;//сбрасывем оба бита CNF- A1 в 0//push-pull
	GPIOA->CRL |=GPIO_CRL_MODE2_1;//регистор на выход с частатой 2 MГц//устанавливаем, 1-й бит MODE1- A1, в 1

	GPIOA->CRL &=~GPIO_CRL_CNF3;//сбрасывем оба бита CNF- A1 в 0//push-pull
	GPIOA->CRL |=GPIO_CRL_MODE3_1;//регистор на выход с частатой 2 MГц//устанавливаем, 1-й бит MODE1- A1, в 1

	GPIOA->CRL &=~GPIO_CRL_CNF4;//сбрасывем оба бита CNF- A1 в 0//push-pull
	GPIOA->CRL |=GPIO_CRL_MODE4_1;//регистор на выход с частатой 2 MГц//устанавливаем, 1-й бит MODE1- A1, в 1
}

void rotate(uint8_t coil)
{
	switch(coil)
	{
	case 0: {
		GPIOA->BSRR = GPIO_BSRR_BS1;
		GPIOA->BRR = GPIO_BRR_BR2;
		GPIOA->BRR = GPIO_BRR_BR3;
		GPIOA->BRR = GPIO_BRR_BR4;
	}break;


	case 1: {
		GPIOA->BSRR = GPIO_BSRR_BS1;
		GPIOA->BSRR = GPIO_BSRR_BS2;
		GPIOA->BRR = GPIO_BRR_BR3;
		GPIOA->BRR = GPIO_BRR_BR4;
	}break;


	case 2: {
		GPIOA->BRR = GPIO_BRR_BR1;
		GPIOA->BSRR = GPIO_BSRR_BS2;
		GPIOA->BRR = GPIO_BRR_BR3;
		GPIOA->BRR = GPIO_BRR_BR4;
	}break;


	case 3: {
		GPIOA->BRR = GPIO_BRR_BR1;
		GPIOA->BSRR = GPIO_BSRR_BS2;
		GPIOA->BSRR = GPIO_BSRR_BS3;
		GPIOA->BRR = GPIO_BRR_BR4;
	}break;


	case 4: {
		GPIOA->BRR = GPIO_BRR_BR1;
		GPIOA->BRR = GPIO_BRR_BR2;
		GPIOA->BSRR = GPIO_BSRR_BS3;
		GPIOA->BRR = GPIO_BRR_BR4;
	}break;


	case 5: {
		GPIOA->BRR = GPIO_BRR_BR1;
		GPIOA->BRR = GPIO_BRR_BR2;
		GPIOA->BSRR = GPIO_BSRR_BS3;
		GPIOA->BSRR = GPIO_BSRR_BS4;
	}break;


	case 6: {
		GPIOA->BRR = GPIO_BRR_BR1;
		GPIOA->BRR = GPIO_BRR_BR2;
		GPIOA->BRR = GPIO_BRR_BR3;
		GPIOA->BSRR = GPIO_BSRR_BS4;
	}break;


	case 7: {
		GPIOA->BSRR = GPIO_BSRR_BS1;
		GPIOA->BRR = GPIO_BRR_BR2;
		GPIOA->BRR = GPIO_BRR_BR3;
		GPIOA->BSRR = GPIO_BSRR_BS4;
	}break;

	case 8: {
		GPIOA->BRR = GPIO_BRR_BR1;
		GPIOA->BRR = GPIO_BRR_BR2;
		GPIOA->BRR = GPIO_BRR_BR3;
		GPIOA->BRR = GPIO_BRR_BR4;
		}break;

	}

}

uint8_t  rt_coil = 0;
void rt_clws(void)
{
	if(rt_coil == 8)
	rt_coil = 0;
		rotate(rt_coil);
		rt_coil++;

}
