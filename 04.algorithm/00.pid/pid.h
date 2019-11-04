/*文件名：PID.h*/

#ifndef  _PID_H_
#define  _PID_H_

extern float Kp,Ki,Kd;       //系数（全局变量）
extern float AclValue; //实际值
extern float SetValue;

int PID(void);

#endif