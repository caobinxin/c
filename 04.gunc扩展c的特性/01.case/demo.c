#include <stdio.h>



void test_1(){
    unsigned char buf[6]={0x00,0x07,0x11,0x60,0x61,0x66};
    
    for(int i=0;i<6;i++)
    switch(buf[i])
    {
        case 0x00 ... 0x10: printf("buf[%d] is 0x0 ~0x10\n",i);  break;
        case 0x11 ... 0x20: printf("buf[%d] is 0x11~0x20\n",i);  break;
        case 0x30 ... 0x60: printf("buf[%d] is 0x30~0x60\n",i);  break;
        case 0x61 ... 0xff: printf("buf[%d] is 0x61~0xff\n",i);  break;
    } 
}

void test_2(){
    char buf[6][6]={"0xff","0X02","0X1f","0xf1","0xa1","0Xb0"};

    for(int i=0;i<6;i++)
    if(buf[i][0]=='0'&&(buf[i][1]=='x' || buf[i][1]=='X'))    //匹配前缀
    {
        unsigned char val=0;
        int err=0; 
        for(int j=2;j<4;j++)
        switch(buf[i][j]) 
        {
            case '0' ... '9' :   val= val*16 + (buf[i][j]-'0'); break;
            case 'a' ... 'f' :   val= val*16 + (buf[i][j]-'a'+10); break;
            case 'A' ... 'F' :   val= val*16 + (buf[i][j]-'A'+10); break;
            default :  err =1;  break;
        }   

        if(!err)    
            printf("buf[%d]  = 0X%02X\n",i,val);
        else
            printf("buf[%d]  ERR \n",i); 
    }
    else
        printf("buf[%d]  ERR \n",i); 
}

int main(int argc, char const *argv[])
{
    test_2();

    return 0;
}
