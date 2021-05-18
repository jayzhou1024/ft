#ifndef __TIMER__H__
#define __TIMER__H__

/***************************************定时器配置寄存器***************************************/
//每个核有两个私有的定时器，所以均使用内核本地地址
	//Timer0控制寄存器
	#define TIMER0_CTRL        0x0401C0000

	//Timer0周期寄存器
	#define TIMER0_PERIOD      TIMER0_CTRL + 0x04

	//Timer0计数寄存器
	#define TIMER0_COUNTER     TIMER0_CTRL + 0x08

	//Timer0空闲寄存器0
	#define TIMER0_SPARE_0     TIMER0_CTRL + 0x10

	//Timer0空闲寄存器1
	#define TIMER0_SPARE_1     TIMER0_CTRL + 0x14

	//Timer0空闲寄存器2
	#define TIMER0_SPARE_2     TIMER0_CTRL + 0x18

	//Timer0空闲寄存器3
	#define TIMER0_SPARE_3     TIMER0_CTRL + 0x1C

	//向量部件使能寄存器
	#define VECTOR_CLK_GATING  TIMER0_CTRL + 0x30

	//Timer1控制寄存器
	#define TIMER1_CTRL        0x0401D0000

	//Timer1周期寄存器
	#define TIMER1_PERIOD      TIMER1_CTRL + 0x04

	//Timer1计数寄存器
	#define TIMER1_COUNTER     TIMER1_CTRL + 0x08

	//Timer1空闲寄存器0
	#define TIMER1_SPARE_0     TIMER1_CTRL + 0x10

	//Timer1空闲寄存器1
	#define TIMER1_SPARE_1     TIMER1_CTRL + 0x14

	//Timer1空闲寄存器2
	#define TIMER1_SPARE_2     TIMER1_CTRL + 0x18

	//Timer1空闲寄存器3
	#define TIMER1_SPARE_3     TIMER1_CTRL + 0x1C

	//TimerNO
	//0 : Ref to TIMER0
	//1 : Ref to TIMER1

	//SpareRegNO
	//0 : Ref to TIMER0_SPARE_REG_0
	//1 : Ref to TIMER0_SPARE_REG_1
	//2 : Ref to TIMER0_SPARE_REG_2
	//3 : Ref to TIMER0_SPARE_REG_3
	//4 : Ref to TIMER1_SPARE_REG_0
	//5 : Ref to TIMER1_SPARE_REG_1
	//6 : Ref to TIMER1_SPARE_REG_2
	//7 : Ref to TIMER1_SPARE_REG_3


/***************************************函数定义***************************************/
	//启动定时器
	void TimerStart(unsigned int TimerNO);

	//暂停定时器计数
	void TimerHold(unsigned int TimerNO);

	//恢复定时器计数
	void TimerResume(unsigned int TimerNO);

	//获取定时器计数
	unsigned int GetTimerCount(unsigned int TimerNO);

	//获取定时器周期
	unsigned int GetTimerPeriod(unsigned int TimerNO);

	//设置定时器周期
	void SetTimerPeriod(unsigned int TimerNO, unsigned int Period);

	//获取空闲寄存器
	unsigned int GetSpareReg(unsigned int SpareRegNO);

	//设置空闲寄存器
	void SetSpareReg(unsigned int SpareRegNO, unsigned int Data);

	//关闭向量部件时钟
	void DisableVectorClk();

	//使能向量部件时钟
	void EnableVectorClk();

/***************************************寄存器说明***************************************/
	//TIMER0_CTRL[1:0]
	//该寄存器控制Timer0计数的启动、暂停和恢复。11：复位并启动定时器；01：暂停；10：恢复。
	//注意：用户读取该寄存器时，TIMER0_CTRL[0]这一位总是0。

	//TIMER0_PERIOD[31:0]
	//该寄存器控制Timer0的计数数量。
	//实际时间 = 系统时钟周期 * TIMER0_PERIOD[31:0] * 16

	//TIMER0_COUNTER[31:0]
	//该寄存器反映TImer0的内部计数值。

	//TIMER0_SPARE_0, TIMER0_SPARE_1, TIMER0_SPARE_2, TIMER0_SPARE_3
	//这些寄存器无特殊功能，用户可用于任何目的。

	//VECTOR_CLK_GATING[0]
	//该寄存器控制向量部件（VPU和AM）时钟的使能。1：使能；0：禁止。默认使能。
	//当向量部件处于空闲状态，用可以禁止其时钟，并在需要时再使能时钟。

	//TIMER1_CTRL[1:0]
	//该寄存器控制Timer1计数的启动、暂停和恢复。11：复位并启动定时器；01：暂停；10：恢复。
	//注意：用户读取该寄存器时，TIMER1_CTRL[0]这一位总是0。

	//TIMER1_PERIOD[31:0]
	//该寄存器控制Timer1的计数数量。
	//实际时间 = 系统时钟周期 * TIMER1_PERIOD[31:0] * 16

	//TIMER1_COUNTER[31:0]
	//该寄存器反映TImer0的内部计数值。

	//TIMER1_SPARE_0, TIMER1_SPARE_1, TIMER1_SPARE_2, TIMER1_SPARE_3
	//这些寄存器无特殊功能，用户可用于任何目的。
	

#endif