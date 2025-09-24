# 0 "test.cpp"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "test.cpp"
int main()
{
    int i,n,f;
    cin>>n;
    i=2;
    f=1;
    while(i <= n)
    {
        f=f*i;
        i=i+1;
    }

    cout<<f<<endl;
}
