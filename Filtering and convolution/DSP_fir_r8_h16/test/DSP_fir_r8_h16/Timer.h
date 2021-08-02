#ifndef __TIMER__H__
#define __TIMER__H__

/***************************************��ʱ�����üĴ���***************************************/
//ÿ����������˽�еĶ�ʱ�������Ծ�ʹ���ں˱��ص�ַ
	//Timer0���ƼĴ���
	#define TIMER0_CTRL        0x0401C0000

	//Timer0���ڼĴ���
	#define TIMER0_PERIOD      TIMER0_CTRL + 0x04

	//Timer0�����Ĵ���
	#define TIMER0_COUNTER     TIMER0_CTRL + 0x08

	//Timer0���мĴ���0
	#define TIMER0_SPARE_0     TIMER0_CTRL + 0x10

	//Timer0���мĴ���1
	#define TIMER0_SPARE_1     TIMER0_CTRL + 0x14

	//Timer0���мĴ���2
	#define TIMER0_SPARE_2     TIMER0_CTRL + 0x18

	//Timer0���мĴ���3
	#define TIMER0_SPARE_3     TIMER0_CTRL + 0x1C

	//��������ʹ�ܼĴ���
	#define VECTOR_CLK_GATING  TIMER0_CTRL + 0x30

	//Timer1���ƼĴ���
	#define TIMER1_CTRL        0x0401D0000

	//Timer1���ڼĴ���
	#define TIMER1_PERIOD      TIMER1_CTRL + 0x04

	//Timer1�����Ĵ���
	#define TIMER1_COUNTER     TIMER1_CTRL + 0x08

	//Timer1���мĴ���0
	#define TIMER1_SPARE_0     TIMER1_CTRL + 0x10

	//Timer1���мĴ���1
	#define TIMER1_SPARE_1     TIMER1_CTRL + 0x14

	//Timer1���мĴ���2
	#define TIMER1_SPARE_2     TIMER1_CTRL + 0x18

	//Timer1���мĴ���3
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


/***************************************��������***************************************/
	//������ʱ��
	void TimerStart(unsigned int TimerNO);

	//��ͣ��ʱ������
	void TimerHold(unsigned int TimerNO);

	//�ָ���ʱ������
	void TimerResume(unsigned int TimerNO);

	//��ȡ��ʱ������
	unsigned int GetTimerCount(unsigned int TimerNO);

	//��ȡ��ʱ������
	unsigned int GetTimerPeriod(unsigned int TimerNO);

	//���ö�ʱ������
	void SetTimerPeriod(unsigned int TimerNO, unsigned int Period);

	//��ȡ���мĴ���
	unsigned int GetSpareReg(unsigned int SpareRegNO);

	//���ÿ��мĴ���
	void SetSpareReg(unsigned int SpareRegNO, unsigned int Data);

	//�ر���������ʱ��
	void DisableVectorClk();

	//ʹ����������ʱ��
	void EnableVectorClk();

/***************************************�Ĵ���˵��***************************************/
	//TIMER0_CTRL[1:0]
	//�üĴ�������Timer0��������������ͣ�ͻָ���11����λ��������ʱ����01����ͣ��10���ָ���
	//ע�⣺�û���ȡ�üĴ���ʱ��TIMER0_CTRL[0]��һλ����0��

	//TIMER0_PERIOD[31:0]
	//�üĴ�������Timer0�ļ���������
	//ʵ��ʱ�� = ϵͳʱ������ * TIMER0_PERIOD[31:0] * 16

	//TIMER0_COUNTER[31:0]
	//�üĴ�����ӳTImer0���ڲ�����ֵ��

	//TIMER0_SPARE_0, TIMER0_SPARE_1, TIMER0_SPARE_2, TIMER0_SPARE_3
	//��Щ�Ĵ��������⹦�ܣ��û��������κ�Ŀ�ġ�

	//VECTOR_CLK_GATING[0]
	//�üĴ�����������������VPU��AM��ʱ�ӵ�ʹ�ܡ�1��ʹ�ܣ�0����ֹ��Ĭ��ʹ�ܡ�
	//�������������ڿ���״̬���ÿ��Խ�ֹ��ʱ�ӣ�������Ҫʱ��ʹ��ʱ�ӡ�

	//TIMER1_CTRL[1:0]
	//�üĴ�������Timer1��������������ͣ�ͻָ���11����λ��������ʱ����01����ͣ��10���ָ���
	//ע�⣺�û���ȡ�üĴ���ʱ��TIMER1_CTRL[0]��һλ����0��

	//TIMER1_PERIOD[31:0]
	//�üĴ�������Timer1�ļ���������
	//ʵ��ʱ�� = ϵͳʱ������ * TIMER1_PERIOD[31:0] * 16

	//TIMER1_COUNTER[31:0]
	//�üĴ�����ӳTImer0���ڲ�����ֵ��

	//TIMER1_SPARE_0, TIMER1_SPARE_1, TIMER1_SPARE_2, TIMER1_SPARE_3
	//��Щ�Ĵ��������⹦�ܣ��û��������κ�Ŀ�ġ�
	

#endif