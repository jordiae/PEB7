#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */
#include <vector> /*vector*/
#include <iostream> 
using namespace std;

int main(int argc, char const *argv[])
{

  int k = atoi(argv[1]);
  int seed = atoi(argv[2]);
  //cin >> k;   /*number of elements of the vector*/
  cout << k << " ";
  srand(seed);
  vector<int>v (k);
  for (int i = 0; i < k; ++i){/*Creacio de un vector aleatori de mida k*/
      int RNG = rand()%100000 + 1;
      v[i] = RNG;
  }
  for (int i = 0; i < k; ++i)  {
      //if(i!=0)
      cout << " ";
      int t = v[i];
      cout << t;
  }
}







