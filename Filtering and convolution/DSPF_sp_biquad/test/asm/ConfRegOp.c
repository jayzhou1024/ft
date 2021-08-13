int GetConfReg(unsigned long addr)
{
  return *((unsigned long *)addr);
}

void SetConfReg(unsigned long addr, unsigned int data)
{
  *((unsigned long *)addr) = data;
  return;
}