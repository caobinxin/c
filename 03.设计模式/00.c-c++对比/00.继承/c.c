#include <stdio.h>
#include <stdlib.h>

struct cmd
{
    char *p;
    void (*prun)(struct cmd* pcmd);
    void (*pprint)(struct cmd* pcmd);
};

typedef struct cmd CMD;


void run(CMD* pcmd)
{
    system(pcmd->p);
}

void print(CMD* pcmd)
{
    printf("%s", pcmd->p);
}

struct newcmd
{
    struct cmd cmd1; // 实现继承
    int (*plength)(struct newcme* pnewcmd); //添加新的功能
};

int getlength(struct newcmd* pnewcmd)
{
    return strlen(pnewcmd->cmd1.p);
}

void main()
{
    CMD cmd1 = {"ls -l", run, print};
    cmd1.pprint(&cmd1);
    cmd1.prun(&cmd1);

    system("sleep 2s");
}

int main2(int argc, char const *argv[])
{
    struct newcmd newcmd1;

    newcmd1.cmd1.p = "ls -a";
    newcmd1.cmd1.pprint = print;
    newcmd1.cmd1.prun = run;
    newcmd1.plength = getlength; 

    newcmd1.cmd1.pprint(&newcmd1.cmd1);
    newcmd1.cmd1.prun(&newcmd1.cmd1);
    printf("%d", newcmd1.plength(&newcmd1));

    system("echo success !!!");
    return 0;
}



