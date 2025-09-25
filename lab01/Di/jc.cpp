#include<iostream>
using namespace std;
#define NUM 2
int main()
{
    int i,n,f;
    // std::cin >> n;
    n = NUM;
    i = 2;
    f = 1;
    while(i <= n)
    {
        f = f * i;
        i = i + 1;
    }
    printf("%d\n",f);
}