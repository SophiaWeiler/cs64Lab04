#include<iostream>
using namespace std;

int main(){
    int x,y,z;
    cin >> x;
    cin >> y;
    cin >> z;

    if(x<y){
        if(z<x){
            cout << z;
        }
        else{
            cout << x;
        }
    }
    else if(z < y){
        cout << z;
    }
    else{
        cout << y;
    }
}





