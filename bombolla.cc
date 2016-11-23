#include <iostream>
#include <vector>

using namespace std;

// Pre: cap
// Post: v conte els elements inicials i esta ordenat creixentment
void ordena_per_bombolla(vector<int>& v) {
    int ultim = v.size() - 1;
    while (ultim > 0) {
        int ultim_swap = 0; 
        for (int i = 0; i < ultim; i++) {
            if (v[i] > v[i+1]) {
                swap(v[i],v[i+1]);
                ultim_swap = i;
            }
        }
        ultim = ultim_swap;
    }

}

int main() {
    int n;
    cin >> n;
    vector<int> VectorAOrdenar(n);
    for(int i=0; i< n; i++) cin >> VectorAOrdenar[i];
	ordena_per_bombolla(VectorAOrdenar);
}