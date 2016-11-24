#include <iostream>
#include <vector>

using namespace std;

// Pre: cap
// Post: v conte els elements inicials i esta ordenat creixentment
void ordena_per_insercio(vector<int>& v) {
    // Inv: v[0..i-1] esta ordenat creixentment
    for (int i = 1; i < v.size(); ++i) {
        int x = v[i];
        int j = i;
        while (j > 0 and v[j - 1] > x) {
            v[j] = v[j - 1];
            --j;
        }
        v[j] = x;
    }
}

int main() {
	int n;
	cin >> n;
	vector<int> VectorAOrdenar(n);
	for(int i=0; i< n; i++) cin >> VectorAOrdenar[i];
        cout << "Gambate KUrsai" << endl;
	ordena_per_insercio(VectorAOrdenar);
}