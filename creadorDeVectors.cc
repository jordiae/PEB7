#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */
#include <vector> /*vector*/
#include <iostream> 
using namespace std;
int main ()
{

  int k;
  cin >> k;   /*number of elements of the vector*/
  cout << k << " ";
  srand (time(NULL));
  vector<int>v (k);
  for (int i = 0; i < k; ++i){/*Creacio de un vector aleatori de mida k*/
      int RNG = rand()%100000 + 1;
      v[i] = RNG;
  }
  for (int i = 0; i < k; ++i)  {
      if(i!=0) cout << " ";
      int t = v[i];
      cout << t;
  }
}