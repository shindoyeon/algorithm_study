#include<iostream>
#include <cstdio>
#include <algorithm>
using namespace std;

int main(int argc, char** argv)
{
	int test_case;
	int T;

    cin>>T;

	for(test_case = 1; test_case <= T; ++test_case)
	{   

        cin>>test_case;

        int score[1000];
        int num[101]={0};
        int max=0, res=0;

        for(int i=0;i<1000;i++){
            cin>>score[i];

            for(int j=0;j<=100;j++){
                if(score[i]==j){
                    num[j]++;
                    break;
                }
            }
        }

        max=num[100];

        for(int i=100;i>=0;i--){
            if(num[i]>max){
                max=num[i];
                res=i;
            }
        }
        cout<<"#"<<test_case<<" "<<res<<"\n";
    }
    cout<<"\n";
	return 0;
}