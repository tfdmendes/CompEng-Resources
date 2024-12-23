//
// Algoritmos e Estruturas de Dados --- 2024/2025
//
// Joaquim Madeira, April 2020
//
// Adapted from Tomás Oliveira e Silva, AED, September 2015
//
// Pointers queue (First In First Out) implementation based on a linked list
//

#ifndef _POINTERS_QUEUE_
#define _POINTERS_QUEUE_

typedef struct _PointersQueue Queue;

Queue* QueueCreate(void);

void QueueDestroy(Queue** p);

void QueueClear(Queue* q);

int QueueSize(const Queue* q);

int QueueIsEmpty(const Queue* q);

void* QueuePeek(const Queue* q);

void QueueEnqueue(Queue* q, void* p);

void* QueueDequeue(Queue* q);

#endif  // _POINTERS_QUEUE_
