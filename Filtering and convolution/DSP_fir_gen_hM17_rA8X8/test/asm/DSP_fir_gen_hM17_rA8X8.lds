/*YHFT LD SCRIPT V1.0 2020-6-28
  YHFT LIBRARY V1.0 2020-6-28*/
SEARCH_DIR("");
ENTRY(vector)
INPUT(./DSP_fir_gen_hM17_rA8X8_asm.o ./crti.o ./crtbegin.o ./crtend.o ./crtn.o ./M7000API.lib ./vlib7000.a ./libm.a ./libc.a ./libgcc.a ./libc.a )
 __HEAP_SIZE = DEFINED(__HEAP_SIZE) ? __HEAP_SIZE : 0x10000;
 __STACK_SIZE = DEFINED(__STACK_SIZE) ? __STACK_SIZE  : 0x10000;
 __VHEAP_SIZE = DEFINED(__VHEAP_SIZE) ? __VHEAP_SIZE : 0x5000;
 __VSTACK_SIZE = DEFINED(__VSTACK_SIZE) ? __VSTACK_SIZE  : 0x1000;
 __CIO_SIZE = DEFINED(__CIO_SIZE) ? __CIO_SIZE  : 0x4000;
 __INE_SIZE  = DEFINED(__INE_SIZE) ? __INE_SIZE  : 0x500;

SECTIONS                                                           
{    
	    . = 0x40010000;
     .Vheap ALIGN(0x8) :
  {
       __Vheap  =  .;
       *(.Vheap)
       . = . + __VHEAP_SIZE;
       __eVheap  =  .;
  }
    . = 0x4007ffc0;
   .vstack ALIGN(0x8) :
  {
 	 __vstack  =  .;
     *(.vstack)
     __evstack  =  .;
  }                                                               
   . =0x800000000; 
    __Top_Adress =  .;
  .userInt ALIGN(0x10) : {
      __userInt =  .;
      KEEP(*(.userInt))
      . = . + __INE_SIZE;
     __euserInt =  .;
  }
. =0x800002000;
  .userExc ALIGN(0x10) : {
      __userExc =  .;
      KEEP(*(.userExc))
      . = . + __INE_SIZE;
     __euserExc =  .;
  }
  .text ALIGN(0x4) : {
      __text =  .;
        *(but)
      *(.text .text.*)
     __etext =  .;
  }  

 .data ALIGN(0x8) : { 
          . = . ;
	  __data  =  .;
          *(.data)
          *(.sdata)
          __edata  =  .;
 } 

 .bss ALIGN(0x8) : {
     __bss  =  .;
    *(.bss .bss.*)
    *(.common)
    *(COMMON)
    *(.far .far.*)
    __ebss  =  .;
  }

  .sbss ALIGN(0x8) : {
     _sbss  =  .;
      *(.sbss)
     _esbss = .;
  } 

 .rodata ALIGN(0x8) : {
     __rodata  =  .;
    *(.rodata .rodata.*)
    __erodata  =  .;
  } 
 
 .const ALIGN(0x8) : {
     __const  =  .;
    *(.const .const.*)
    __econst  =  .;
  } 

 .cio ALIGN(0x8):{
     __cio =  .;
     *(.cio)
     . = . + __CIO_SIZE;
     _ecio = .;
  }

 .heap ALIGN(0x8) :
  {
     __heap  =  .;
    *(.heap)
     . += __HEAP_SIZE;
     __eheap  =  .;
  }
    .svheap ALIGN(0x8) :
  {
       __svheap  =  .;
       *(.svheap)
       . = . + __VHEAP_SIZE / 100;
       __esvheap  =  .;
  } 
 /* Stack (grows upward).  */
  .stack ALIGN(0x8) :
  { 
    .  =  . + __STACK_SIZE;
    __stack0  =  . -8;
    .  =  . + __STACK_SIZE;
    __stack1  =  . -8;
    *(.stack)
	  __estack  =  .;
  } 
    
  .stab  0 (NOLOAD) :
  {
    [ .stab ]
  }
  .stabstr 0 (NOLOAD) :
  {
    [ .stabstr ]
  } 
  .comment : 
  { 
    *(.comment) 
  }
	
}     
