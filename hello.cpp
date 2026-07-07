#include <iostream>

void wave(const std::string& person) {
	std::cout << "Hello, " << person << "!\n";
}

int main() {
	wave("World");
	return 0;
}
