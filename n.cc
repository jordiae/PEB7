#include <iostream>
#include <vector>
#include <stdlib.h> 

using namespace std;

int main(int argc, char* argv[]) {
	int n;
	cin >> n;
	vector<int> v(n);
	for (int i =0; i < n; i++)
		cin >> v[i];
	cout << v[atoi(argv[1])] << " ";
}