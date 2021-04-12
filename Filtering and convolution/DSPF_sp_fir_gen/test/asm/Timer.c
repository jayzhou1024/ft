#include "Timer.h"
#include "ConfRegOp.h"
//启动定时器
void TimerStart(unsigned int TimerNO)
{
	if(TimerNO == 0) SetConfReg(TIMER0_CTRL, 3);
	if(TimerNO == 1) SetConfReg(TIMER1_CTRL, 3);
	return;
}

//暂停定时器
void TimerHold(unsigned int TimerNO)
{
	if(TimerNO == 0) SetConfReg(TIMER0_CTRL, 1);
	if(TimerNO == 1) SetConfReg(TIMER1_CTRL, 1);
	return;
}

//继续定时器
void TimerResume(unsigned int TimerNO)
{
	if(TimerNO == 0) SetConfReg(TIMER0_CTRL, 2);
	if(TimerNO == 1) SetConfReg(TIMER1_CTRL, 2);
	return;
}

//获取定时器计数
unsigned int GetTimerCount(unsigned int TimerNO)
{
	if(TimerNO == 0) return GetConfReg(TIMER0_COUNTER);
	if(TimerNO == 1) return GetConfReg(TIMER1_COUNTER);
}

//获取定时器周期
unsigned int GetTimerPeriod(unsigned int TimerNO)
{
	if(TimerNO == 0) return GetConfReg(TIMER0_PERIOD);
	if(TimerNO == 1) return GetConfReg(TIMER1_PERIOD);
}

//设置定时器周期
void SetTimerPeriod(unsigned int TimerNO, unsigned int Period)
{
	if(TimerNO == 0) SetConfReg(TIMER0_PERIOD, Period);
	if(TimerNO == 1) SetConfReg(TIMER1_PERIOD, Period);
  return;
}

//获取空闲寄存器
unsigned int GetSpareReg(unsigned int SpareRegNO)
{
	switch (SpareRegNO) {
		case 0:
			return  GetConfReg(TIMER0_SPARE_0);
			break;
		case 1:
			return  GetConfReg(TIMER0_SPARE_1);
			break;
		case 2:
			return  GetConfReg(TIMER0_SPARE_2);
			break;
		case 3:
			return  GetConfReg(TIMER0_SPARE_3);
			break;
		case 4:
			return  GetConfReg(TIMER1_SPARE_0);
			break;
		case 5:
			return  GetConfReg(TIMER1_SPARE_1);
			break;
		case 6:
			return  GetConfReg(TIMER1_SPARE_2);
			break;
		case 7:
			return  GetConfReg(TIMER1_SPARE_3);
			break;
		default: return 0; break;
	}
}

//设置空闲寄存器
void SetSpareReg(unsigned int SpareRegNO, unsigned int Data)
{
	switch (SpareRegNO) {
		case 0:
			SetConfReg(TIMER0_SPARE_0, Data);
			break;
		case 1:
			SetConfReg(TIMER0_SPARE_1, Data);
			break;
		case 2:
			SetConfReg(TIMER0_SPARE_2, Data);
			break;
		case 3:
			SetConfReg(TIMER0_SPARE_3, Data);
			break;
		case 4:
			SetConfReg(TIMER1_SPARE_0, Data);
			break;
		case 5:
			SetConfReg(TIMER1_SPARE_1, Data);
			break;
		case 6:
			SetConfReg(TIMER1_SPARE_2, Data);
			break;
		case 7:
			SetConfReg(TIMER1_SPARE_3, Data);
			break;
		default: return; break;
	}
}

//关闭向量部件时钟
void DisableVectorClk()
{
	SetConfReg(VECTOR_CLK_GATING, 0);
}

//使能向量部件时钟
void EnableVectorClk()
{
	SetConfReg(VECTOR_CLK_GATING, 1);
}

/*


//设置全局中断异常使能
void IntGIE(unsigned long NO)
{
din_creg(SST, NO);
 
}

*/
