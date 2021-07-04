#include <iostream>
using namespace std;

int main()
{
	int input = 1 ;

	while (input > 0 && input < 4) {
		cout << "\n===========ICS GAME===========\n";
		cout << "1. Play game\n";
		cout << "2. Load game\n";
		cout << "3. Play multiplayer\n";
		cout << "4. Exit\n";
		cout << "Selection: ";
		cin >> input;
		switch (input) {
		case 1:            
			cout << "Play game\n";
			break;
		case 2:            
			cout << "Load game\n";
			break;
		case 3:            
			cout << "Play multiplayer game\n";
			break;
		case 4:            
			cout << "Thank you for playing!\n";
			break;
		default:            
			cout << "Error, invalid input, quitting\n";
			break;
		}
	}
}