#include "stdio.h"

float Kp=10,Ki=2,Kd=0.5;  //系数

float SetValue=10000;  //设定值

float AclValue=0; //实际

float Error1=0,Error2=0,Error3=0;     //误差

/*  下面为增量式PID算法  */

/**********************************************************************************
函数名：PID
返回值：输出增量
参数：无
备注：当输出大于0表示小于预设值，当输出小于0表示大于预设值
***********************************************************************************/
int PID(void)
{
    float OutValue =0;
    Error3 = SetValue - AclValue;

    OutValue = Kp*(Error3-Error2)+Ki*(Error3)+Kd*(Error3-2*Error2+Error1);
    
    Error1=Error2;
    Error2=Error3;
    
    return OutValue;
}

int main(void)
{
    unsigned int i=1000;
    while(i)
    {
        
        PID();  //特别注意这里：必须要运行，因为需要执行这一步：Error1=Error2; Error2=Error3;
        printf("当前实际值为：%f \n",AclValue); 
        AclValue += PID(); 
        i--;
    } 

    return 0;
}