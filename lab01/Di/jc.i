# 0 "jc.cpp"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "jc.cpp"



int main()
{
    int i,n,f;

    n = 2;
    i = 2;
    f = 1;
    while(i <= n)
    {
        f = f * i;
        i = i + 1;
    }
    std::cout << f << std::endl;
}
