void insertionSort(int a[], int n){
    for(int i = 1; i < n, i++){
        if(a[i] < a[i-1])
            insertElement(a, i, a[i]);
    }
}


void insertElement(int sorted[], int n, int element){
    for(int i = n-1; (i>= 0) && (element < sorted[i]); i--){
        sorted[i+1] = sorted[i];
    }
    sorted[i+1] = element;

}



int search(int a[], int n, int x){
    int stop = 0;
    int i;
 
    for(i = 0; i < n; i++){
        if( x <= a[i]){
            stop = 1;
            break;
        }
    }
    if(stop && x == a[i]) return i;

    return -1;
 }