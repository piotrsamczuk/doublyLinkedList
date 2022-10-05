#pragma once

template <typename T>
class DoublyLinkedList
{
	struct Node
	{
		Node()
		{
			m_next = nullptr;
			m_prev = nullptr;
		}

		T m_data;
		Node* m_next;
		Node* m_prev;
	};

	Node* m_head;
	Node* m_tail;
	size_t m_count;

public:
	DoublyLinkedList()
	{
		m_head = nullptr;
		m_tail = nullptr;
		m_count = 0;
	}

	DoublyLinkedList(const DoublyLinkedList& other)
	{
		m_head = nullptr;
		m_tail = nullptr;
		m_count = 0;

		*this = other;
	}
	
	~DoublyLinkedList()
	{
		clear();
		std::cout << "wywolano destruktor." << std::endl;
		//_CrtDumpMemoryLeaks();
	}



	void clear()
	{
		Node* temp;

		while (m_tail)
		{
			temp = m_tail;
			m_tail = temp->m_prev;
			delete temp;
		}
		m_head = nullptr;
		m_tail = nullptr;
		m_count = 0;
	}

	void addFront(const T& value)
	{
		Node* newNode = new Node();
		newNode->m_data = value;
		newNode->m_next = m_head;
		newNode->m_prev = nullptr;
												
		if(m_head)
			m_head->m_prev = newNode;
		m_head = newNode;
		m_count++;
		if (!m_tail)
			m_tail = newNode;
	}

	void addBack(const T& value)
	{
		Node* newNode = new Node();
		newNode->m_data = value;
		newNode->m_next = nullptr;
		newNode->m_prev = m_tail;

		if(m_tail)
			m_tail->m_next = newNode;
		m_count++;
		m_tail = newNode;
		if (!m_head)					
			m_head = newNode;
	}

	void add(const T& value, size_t index)
	{
		if (index == 0)
			addFront(value);
		else if (index == m_count)
			addBack(value);
		else if (index > m_count)
			throw std::out_of_range("Index out of range");
		else
		{
			Node* temp = m_head;
			for (int i = 0; i < index; i++)
			{
				temp = temp->m_next;
			}

			Node* newNode = new Node();
			newNode->m_data = value;
			newNode->m_next = temp;
			newNode->m_prev = temp->m_prev;

			temp->m_prev = newNode;							
			newNode->m_prev->m_next = newNode;
			m_count++;
		}
	}

	void display()
	{
		if (m_count == 0)
			return;

		Node* temp;
		for (temp = m_head; temp; temp = temp->m_next)
		{
			if (temp == m_head)
				std::cout << "HEAD: ";
			else if (temp->m_next)
				std::cout << "    : ";
			else
				std::cout << "TAIL: ";

			std::cout << temp->m_data << std::endl;
		}
	}

	void removeBack()
	{
		if (m_count == 0)
		{
			return;
		}
		Node* temp;
		temp = m_tail;
		m_tail = m_tail->m_prev;

		if (!m_tail)
			m_head = nullptr;
		else
			m_tail->m_next = nullptr;
		m_count--;

		delete temp;
	}

	void removeFront()
	{
		if (m_count == 0)
			return;

		Node* temp;
		temp = m_head;
		m_head = m_head->m_next;

		if (!m_head)
			m_tail = nullptr;
		else
			m_head->m_prev = nullptr;
		m_count--;

		delete temp;
	}

	void remove(size_t index)
	{
		if (index == 0)
			removeFront();
		else if (index == m_count)
			removeBack();
		else if(index > m_count)
			throw std::out_of_range("Index out of range");
		else
		{
			Node* temp = m_head;
			for (int i = 0; i < index; i++)
			{
				temp = temp->m_next;
			}

			temp->m_prev->m_next = temp->m_next;
			temp->m_next->m_prev = temp->m_prev;
			m_count--;
			delete  temp;
		}
	}

	void reverse()
	{
		Node* current = m_head;
		Node* temp = nullptr;
		if (m_count < 2) { return; }
		while (current != nullptr)
		{
			temp = current->m_prev;
			current->m_prev = current->m_next;
			current->m_next = temp;
			current = current->m_prev;		
		}
		temp = m_head;
		m_head = m_tail;
		m_tail = temp;
	}

	Node* searchValue(T value)
	{
		Node* current = m_head;
		while(current)
		{
			if(current->m_data == value)
			{
				return current;
			}
			current = current->m_next;
		}
		return nullptr;
	}

	int size() { return m_count; }
};