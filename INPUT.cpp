#include <iostream>
#include <fstream>
long double n,k,data1,data2;
int main()
{
	std::cin >> n >> k;
 
    std::ofstream outN("K-means/N");
    std::streambuf *coutbuf = std::cout.rdbuf(); //save old buf
    std::cout.rdbuf(outN.rdbuf()); //redirect std::cout
	std::cout << n;
	
	std::ofstream outK("K-means/K");
	std::cout.rdbuf(outK.rdbuf());
	std::cout << k;
	
	std::ofstream outX("K-means/X");
	std::cout.rdbuf(outX.rdbuf());
	while(std::cin >> data1 >> data2)
	{
		std::cout << data1 << ", " << data2 << std::endl;
	}
	return 0;
}
