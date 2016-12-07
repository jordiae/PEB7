#include <iostream>

using namespace std;

int main(int argc, char* argv[]) {
    cout.setf(ios::fixed);
    cout.precision(2);
    int n;
    double iw;
    double ib;
    double bw;
    double bb;
    double fw;
    double fb;
    while (cin >> n) {
       cin >> iw >> bw >> fw >> ib >> bb >> fb;
       cout << n << " " << iw << " " << bw << " " << fw << " " << ib << " " << bb << " " << fb << endl;
    }
}