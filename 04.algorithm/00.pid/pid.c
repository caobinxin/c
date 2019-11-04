/*########################################################################
文件名:PID.c
时间: 2018.9.7
备注:无
#########################################################################*/
#include "pid.h"

float Kp=10,Ki=0.8,Kd=0.5;  //系数

float SetValue=2000;  //设定值

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
    
    Error1=Error2;         //这部分是迭代，因为上次的误差就是上次的当前误差
    Error2=Error3;
    
    if(OutValue>3000)        //这部分是规定最大输出增量
        OutValue=3000;
    if(OutValue<-3000)
        OutValue=-3000;
    
    return OutValue;
}