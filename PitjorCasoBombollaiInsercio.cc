#include <vector> /*vector*/
#include <iostream> 
using namespace std;

int main ()
{
  int k;
  cin >> k;   /*number of elements of the vector*/
  cout << k << " ";
  vector<int>v (k);
  for (int i = 0; i < k; ++i){/*El vector esta ordenado en orden decreciente*/
    if(i!=0) cout << " ";
    cout << k-i;
  }
}