
#include <vector> /*vector*/
#include <iostream> 
using namespace std;
int main ()
{

  int k;
  cin >> k;   /*number of elements of the vector*/
  cout << k << " ";
  vector<int>v (k);
  int KT = k;
  if( !k%2 ) KT++; //Ultima posicio es imparell
  for (int i = 0; i < k; ++i){
/*Creacio de un vector aleatori de mida k*/
     if(!i%2) v[i] = (i+1)/2; //Impares
     else v[i] = (KT+i)/2; //Pares
  }
  for (int i = 0; i < k; ++i)  {
      if(i!=0) cout << " ";
      int t = v[i];
      cout << t;
  }
}

