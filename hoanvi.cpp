#include<iostream>
using namespace std;
int a[20],boolean[20]={0};
int n;
void xuat(){
	for (int i=1;i<=n;i++){
		cout.width(2);
		cout<<a[i];
	}
	cout<<endl;
}
void hoanvi(int k){
	for (int i=1;i<=n;i++){
		if(!boolean[i]){
			a[k]=i;
			boolean[i]=1;
			if(k==n) xuat();
			else hoanvi(k+1);
			boolean[i]=0;
		}
	}
}
int main(){
	cout<<"nhap vao so phan tu: ";
	cin>>n;
	hoanvi(1);
	return 0;
}
