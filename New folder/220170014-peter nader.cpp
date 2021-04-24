#include <iostream>
#include <ctime>
#include <cstdlib>

using namespace std;

int main() {
	cout << "Hello... Testing rand()" << endl;
	srand(time(0));

	for (int i = 0; i < 10; i++) {
		int x = rand() % 100;
		cout << x << ":";
		cout << ((x % 2 == 0) ? "Even" : "Odd") << endl;
	}

	return 0;
}

