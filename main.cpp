#include<iostream>
#include<memory>
#include"test.h"


using namespace std;


int main(void){
	auto i=make_unique<int>(12);
	cout<<"hello world"<<endl;
	cout<<square(*i)<<endl;
}
