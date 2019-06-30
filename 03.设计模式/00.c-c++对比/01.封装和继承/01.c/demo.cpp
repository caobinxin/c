struct st_abc_private;
struct st_abc{
    int a;
    void (*xyz_func)(struct st_abc*);
    struct st_abc_private *priv;
};