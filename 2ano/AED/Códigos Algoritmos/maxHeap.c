struct _Heap{
    void** array;
    int capacity;
    int size;
    compFunc compare;
    printFunc print;
}

//! ----------- Inserir elemento -----------
// Novo elemento é adicionado após o último
// Se o seu valor for maior do que o valor do seu progenmitor, trocar esses dois elementos
// Proceder do mesmo modo, em direção à raiz, asté se verificar o critério de ordem
void MaxHeapInsert(MaxHeap* ph, void* item){
    assert(!MapHeapIsFull(ph));

    int n = ph->size;

    while(n > 0){
        int p = _parent(n);

        // Se o item não for maior que o node pai, então estamos no sitio certo
        if(ph->compare(item, ph->array[p]) <= 0) break;

        ph->array[n] = ph->array[p];

        n = p
    }
    ph->array[n] = item;
    ph->size++;
}



//! ----------- Construir Max-Heap com BOTTOM UP -----------

int leftChild(int index){
    return 2 * index  + 1;
}


void heapBottomUp(int a[], int n){
    for(int i = n / 2 -1; i >= 0; i--)
        fixHeap(a,i,n);
}


void fixHeap(int a[], int index, int n){
    int child;
    for(int tmp = a[index]; leftChild(index) < n; index = child ){
        
    }



}