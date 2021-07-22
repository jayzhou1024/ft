/*bytes�����ָߵ�16-bit���ã���16-bitΪ���ݵ�Ԫ������32-bit����Ϊһ�����ݵ�Ԫ����
��16-bitΪ֡������ֵΪ0ʱ��ʾ1��֡��ֵΪ1ʱ��ʾ2��֡����������*/
void  M7002_datatrans(void *src,void *dst,unsigned long bytes)
{
    int volatile *address;
    int word0=0;
    int word_n=0;
    int byte1=0;
    word0 = (int)((long long)src>>4)&0xF0000000;     //Դ��ַ��4-bit
    word0 |= (int)((long long)dst>>8)&0x0F000000;    //Ŀ�ĵ�ַ��4-bit
    word0 |= 0x5002;                      //DMA��Ե㴫�����
    word_n = bytes/4;
    
    if(word_n > 65535)
    	{
    	  byte1 = 0xffff0000;
    	  byte1 |= (word_n/65536)&0x0000ffff;
      }
      else
      	byte1=word_n;

    address = 0x401BFFD0;
    *address = 0xFFFFFFFF;

    /*�߼�ͨ��0��ʼ��ַ*/
    address = 0x401A0000;

    /*������Ʋ����� Դ��ַ������Ŀ�ĵ�ַ����*/
    *address = word0;
    address ++;

    /*DMA����ģʽ������1*/
    *address = 1;
    address ++;

    /*����Դ��ַ*/
    *address = (int)src;
    address ++;

    /*Դ��������16λΪԴ֡������16λΪԴ��Ԫ����*/  
    *address = byte1;                   
    address ++;

    /*����Ŀ�ĵ�ַ*/
    *address = (int)dst;
    address ++;

    /*Ŀ�ļ�������16λΪĿ��֡������16λΪĿ�ĵ�Ԫ���� */
    *address = byte1;
    address ++;

    /*����ֵ���߰���ΪĿ�������������Ͱ���λԴ��������*/
    *address = 0;
    address ++;

    /*������ֵ*/
    *address = 0;
    address ++;

    /*����ESRֵ������DMA*/
    address = 0x401BFFF8;
    *address = 0x1;

    address = 0x401BFFD0;

    /*��ȡCIPR�Ĵ���,���CIPR��Ӧλ*/
    for(;!(*address & 1);)
        ;
    return ;

}


void  M7002_mat_transpose(void *src,void *dst,int row,int col,int flag)
{
    int volatile *address;
    int word0=0;
    int byte0=0;
    int byte1=0;
    word0 = (int)((long long)src>>4)&0xF0000000;     //Դ��ַ��4-bit
    word0 |= (int)((long long)dst>>8)&0x0F000000;    //Ŀ�ĵ�ַ��4-bit
    word0 |= 0x5102;                      //DMA��Ե㴫�����
    
    byte0 = (row<<16) & 0xFFFF0000;
    byte0 |= col & 0x0000FFFF;        
    
    if(flag==1)
    	{
    	  byte1 = ((col/2)<<16) & 0xFFFF0000;
        byte1 |= (row*2) & 0x0000FFFF;
      }
      else
      	{
      	byte1 = (col<<16) & 0xFFFF0000;
        byte1 |= row & 0x0000FFFF;
      }
    
    address = 0x401BFFD0;
    *address = 0xFFFFFFFF;

    /*�߼�ͨ��0��ʼ��ַ*/
    address = 0x401A0000;

    /*������Ʋ����� Դ��ַ������Ŀ�ĵ�ַ����*/
    *address = word0;
    address ++;

    /*DMA����ģʽ������1*/
    *address = (!flag);
    address ++;

    /*����Դ��ַ*/
    *address = (int)src;
    address ++;

    /*Դ��������16λΪԴ���м�������16λΪԴ��Ԫ����*/  
    *address = byte0;                   
    address ++;

    /*����Ŀ�ĵ�ַ*/
    *address = (int)dst;
    address ++;

    /*Ŀ�ļ�������16λΪԴ���м�������16λΪԴ��Ԫ���� */
    *address = byte1;
    address ++;

    /*����ֵ���߰���ΪĿ�������������Ͱ���λԴ��������*/
    *address = 0;
    address ++;

    /*������ֵ*/
    *address = 0;
    address ++;

    /*����ESRֵ������DMA*/
    address = 0x401BFFF8;
    *address = 0x1;

    address = 0x401BFFD0;

    /*��ȡCIPR�Ĵ���,���CIPR��Ӧλ*/
    for(;!(*address & 1);)
        ;
    return ;

}

void  M7002_datatrans_index(void *src,void *dst,int frame,int elem,int index)
{
    int volatile *address;
    int word0=0;
    word0 = (int)((long long)src>>4)&0xF0000000;     //Դ��ַ��4-bit
    word0 |= (int)((long long)dst>>8)&0x0F000000;    //Ŀ�ĵ�ַ��4-bit
    word0 |= 0x5002;                      //DMA��Ե㴫�����
    int byte=0;
    
    byte = (frame<<16)& 0xFFFF0000;
    byte |= elem & 0x0000FFFF;
    

    address = 0x401BFFD0;
    *address = 0xFFFFFFFF;

    /*�߼�ͨ��0��ʼ��ַ*/
    address = 0x401A0000;

    /*������Ʋ����� Դ��ַ������Ŀ�ĵ�ַ����*/
    *address = word0;
    address ++;

    /*DMA����ģʽ������1*/
    *address = 1;
    address ++;

    /*����Դ��ַ*/
    *address = (int)src;
    address ++;

    /*Դ��������16λΪԴ֡������16λΪԴ��Ԫ����*/  
    *address = byte;                  
    address ++;

    /*����Ŀ�ĵ�ַ*/
    *address = (int)dst;
    address ++;

    /*Ŀ�ļ�������16λΪĿ��֡������16λΪĿ�ĵ�Ԫ���� */
    *address = byte;
    address ++;

    /*����ֵ���߰���ΪĿ�������������Ͱ���λԴ��������*/
    *address = index;
    address ++;

    /*������ֵ*/
    *address = 0;
    address ++;

    /*����ESRֵ������DMA*/
    address = 0x401BFFF8;
    *address = 0x1;

    address = 0x401BFFD0;

    /*��ȡCIPR�Ĵ���,���CIPR��Ӧλ*/
    for(;!(*address & 1);)
        ;
    return ;

}
