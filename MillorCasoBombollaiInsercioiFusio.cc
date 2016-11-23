#include <vector> /*vector*/
#include <iostream> 
using namespace std;
/*El vector ya esta ordenado*/
int main ()
{
  int k;
  cin >> k;   /*number of elements of the vector*/
  cout << k << " ";
  vector<int>v (k);
  for (int i = 0; i < k; ++i){/*El vector ya esta ordenado*/
    if(i!=0) cout << " ";
    cout << i;
  }
}