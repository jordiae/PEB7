#include <iostream>

using namespace std;

int main(int argc, char* argv[]) {
	cout.setf(ios::fixed);
    cout.precision(2);
	int n;
	double i;
	double b;
	double f;
	while (cin >> n) {
		cin >> i >> b >> f;
		cout << n << " " << i << " " << b << " " << f << endl;
	}
}