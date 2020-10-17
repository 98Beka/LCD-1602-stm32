#include "Tim2.h"

void Tim2_Init(int psc, int arr)
{
	 __enable_irq ();

	 //clock resolution to the bus
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;

	//prescaler
	TIM2->PSC = psc - 1;

	// the maximum value up to which the timer will count
    TIM2->ARR = arr - 1;

    //Enable interrupt
    TIM2->DIER |= TIM_DIER_UIE;

    //Enable counter
    TIM2->CR1 = TIM_CR1_CEN;

    //Interrupt
    NVIC_EnableIRQ(TIM2_IRQn);

}
//TIM2->CR1 &=~ TIM_CR1_CEN; for disable

