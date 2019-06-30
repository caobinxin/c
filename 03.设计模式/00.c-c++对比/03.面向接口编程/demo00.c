struct base_interface {  
    void (*func1)(struct base_interface* b);  
    void (*func2)(struct base_interface* b);  
    int (*func3)(struct base_interface* b, char * arg);  
};  

struct derived {  
    struct base_interface bi;  
    int x;  
    char ch;  
    char *name;  
};

static void _derived_func_1(struct base_interface *bi)  
{  
    struct derived * d = (struct derived*)bi;  
    d->x *= 2;  
    printf("d->name = %s\n", d->name);  
}  

/* _derived_func_2 impl */  
/* _derived_func_3 impl */  

struct derived *new_derived()  
{  
    struct derived *d = malloc(sizeof(struct derived));  
    d->bi.func1 = _derived_func_1;  
    // d->bi.func_2 = _derived_func_2;  
    // d->bi.func_3 = _derived_func_3;  
    d->x = 0;  
    d->ch = 'a';  
    d->name = "曹斌鑫";  

    return d;  
}

void do_something(struct base_interface *bi)  
{  
    bi->func1(bi);  
}  

int main(int argc, char **argv)  
{  
    struct derived * d = new_derived();  
    do_something((struct base_interface*)d);  

    return 0;  
}


/**
 * 
 * 上面的代码中 do_something 函数完全按照接口编程，
 * 而 bi 可以实际指向任意一个实现了 base_interface 接口的类的实例，
 * 在一定程序上达到多态的效果，花费的代价相当小，却可以让我们的程序提高可扩展性，降低耦合。

    这种简单的方法也是我在自己的项目中使用的方法，效果不错。
 */