#include <iostream>
#include "doublyLinkedList.h"

int main()
{
    DoublyLinkedList<std::string> list1;
	list1.addBack("1");
	list1.addBack("2");
	list1.addBack("3");
	list1.addBack("4");
	list1.addBack("5");
	list1.addBack("6");
	list1.display();
	return 0;
}
