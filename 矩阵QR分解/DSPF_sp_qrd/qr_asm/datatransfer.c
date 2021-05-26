/*bytes参数分高低16-bit配置，低16-bit为数据单元字数（32-bit数据为一个数据单元）；
高16-bit为帧数，其值为0时表示1个帧，值为1时表示2个帧，依次类推*/
void  M7002_datatrans(void *src,void *dst,unsigned long bytes)
{
    int volatile *address;
    int word0=0;
    int word_n=0;
    int byte1=0;
    word0 = (int)((long long)src>>4)&0xF0000000;     //源地址高4-bit
    word0 |= (int)((long long)dst>>8)&0x0F000000;    //目的地址高4-bit
    word0 |= 0x5002;                      //DMA点对点传输参数
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

    /*逻辑通道0起始地址*/
    address = 0x401A0000;

    /*传输控制参数字 源地址自增，目的地址自增*/
    *address = word0;
    address ++;

    /*DMA传输模式控制字1*/
    *address = 1;
    address ++;

    /*设置源地址*/
    *address = (int)src;
    address ++;

    /*源计数，高16位为源帧数，低16位为源单元计数*/  
    *address = byte1;                   
    address ++;

    /*设置目的地址*/
    *address = (int)dst;
    address ++;

    /*目的计数，高16位为目的帧数，低16位为目的单元计数 */
    *address = byte1;
    address ++;

    /*索引值，高半字为目的阵列索引，低半字位源阵列索引*/
    *address = 0;
    address ++;

    /*块索引值*/
    *address = 0;
    address ++;

    /*设置ESR值，启动DMA*/
    address = 0x401BFFF8;
    *address = 0x1;

    address = 0x401BFFD0;

    /*读取CIPR寄存器,检测CIPR相应位*/
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
    word0 = (int)((long long)src>>4)&0xF0000000;     //源地址高4-bit
    word0 |= (int)((long long)dst>>8)&0x0F000000;    //目的地址高4-bit
    word0 |= 0x5102;                      //DMA点对点传输参数
    
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

    /*逻辑通道0起始地址*/
    address = 0x401A0000;

    /*传输控制参数字 源地址自增，目的地址自增*/
    *address = word0;
    address ++;

    /*DMA传输模式控制字1*/
    *address = (!flag);
    address ++;

    /*设置源地址*/
    *address = (int)src;
    address ++;

    /*源计数，高16位为源阵列计数，低16位为源单元计数*/  
    *address = byte0;                   
    address ++;

    /*设置目的地址*/
    *address = (int)dst;
    address ++;

    /*目的计数，高16位为源阵列计数，低16位为源单元计数 */
    *address = byte1;
    address ++;

    /*索引值，高半字为目的阵列索引，低半字位源阵列索引*/
    *address = 0;
    address ++;

    /*块索引值*/
    *address = 0;
    address ++;

    /*设置ESR值，启动DMA*/
    address = 0x401BFFF8;
    *address = 0x1;

    address = 0x401BFFD0;

    /*读取CIPR寄存器,检测CIPR相应位*/
    for(;!(*address & 1);)
        ;
    return ;

}

void  M7002_datatrans_index(void *src,void *dst,int frame,int elem,int index)
{
    int volatile *address;
    int word0=0;
    word0 = (int)((long long)src>>4)&0xF0000000;     //源地址高4-bit
    word0 |= (int)((long long)dst>>8)&0x0F000000;    //目的地址高4-bit
    word0 |= 0x5002;                      //DMA点对点传输参数
    int byte=0;
    
    byte = (frame<<16)& 0xFFFF0000;
    byte |= elem & 0x0000FFFF;
    

    address = 0x401BFFD0;
    *address = 0xFFFFFFFF;

    /*逻辑通道0起始地址*/
    address = 0x401A0000;

    /*传输控制参数字 源地址自增，目的地址自增*/
    *address = word0;
    address ++;

    /*DMA传输模式控制字1*/
    *address = 1;
    address ++;

    /*设置源地址*/
    *address = (int)src;
    address ++;

    /*源计数，高16位为源帧数，低16位为源单元计数*/  
    *address = byte;                  
    address ++;

    /*设置目的地址*/
    *address = (int)dst;
    address ++;

    /*目的计数，高16位为目的帧数，低16位为目的单元计数 */
    *address = byte;
    address ++;

    /*索引值，高半字为目的阵列索引，低半字位源阵列索引*/
    *address = index;
    address ++;

    /*块索引值*/
    *address = 0;
    address ++;

    /*设置ESR值，启动DMA*/
    address = 0x401BFFF8;
    *address = 0x1;

    address = 0x401BFFD0;

    /*读取CIPR寄存器,检测CIPR相应位*/
    for(;!(*address & 1);)
        ;
    return ;

}
