#ifndef OS1_RISCV_CONTEXT_SWITCH_SYNCHORNOUS_LIST_HPP
#define OS1_RISCV_CONTEXT_SWITCH_SYNCHORNOUS_LIST_HPP

#include "../lib/hw.h"

typedef unsigned long uint64;
void printString(char const* string);
void printInt(unsigned long xx, unsigned char base = 10, unsigned char sgn = 0);
template<typename T>
class List
{
private:
    struct Elem
    {
        T* data;
        Elem* next;

        Elem(T* data, Elem* next) : data(data), next(next) {}
    };

    Elem* head;
    Elem* tail;

public:
    List() : head(nullptr), tail(nullptr) {}

    List(const List<T>&) = delete;
    List<T>& operator=(const List<T>&) = delete;

    bool isEmpty() {
        return head == 0;
    }

    void addFirst(T* data)
    {
        Elem* elem = new Elem(data, head);
        head = elem;

        if (!tail)
        {
            tail = head;
        }
    }

    void addLast(T* data)
    {
        Elem* elem = new Elem(data, nullptr);

        if (tail)
        {
            tail->next = elem;
            tail = elem;
        }
        else
        {
            head = tail = elem;
        }
    }

    T* removeFirst()
    {
        if (!head)
        {
            return nullptr;
        }

        Elem* elem = head;
        head = head->next;

        if (!head)
        {
            tail = nullptr;
        }

        T* ret = elem->data;

        delete elem;
        return ret;
    }

    T* peekFirst()
    {
        if (!head)
        {
            return nullptr;
        }

        return head->data;
    }

    T* removeLast()
    {
        if (!head)
        {
            return nullptr;
        }

        Elem* prev = nullptr;

        for (Elem* curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem* elem = tail;

        if (prev)
        {
            prev->next = nullptr;
        }
        else
        {
            head = nullptr;
        }

        tail = prev;

        T* ret = elem->data;
        delete elem;

        return ret;
    }

    T* peekLast()
    {
        if (!tail)
        {
            return nullptr;
        }

        return tail->data;
    }

    void print() {
        Elem* curr = head;
        while (curr) {
            printString("[");
            if (curr->data) {
                printInt((uint64)(curr->data));
            } else {
                printString("null");
            }

            printString("] ");
            curr = curr->next;
        }
        printString("\n");
    }

    int getNumOfElements() {
        Elem* curr = head;
        int cnt = 0;

        while (curr) {
            cnt++;
            curr = curr->next;
        }

        return cnt;
    }
};

#endif