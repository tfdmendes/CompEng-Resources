// LINEAR SEARCH
// ARRAY NÃO ORDENADO

int LinearSearch(int a[], int n, int x){
	
	for(int i = 0; i < n; i++){
		if(a[i] == x) return i;
	}
	return -1;
}





ARRAY ORDENADO
B(n) = 2 	valor procurado igual ao inferior ao 1º elemento
W(n) = (n-1)	valor procurado no fim do array


int LinearSearch(int a[], int n, int x){
	int stop = 0;
	int i;

	for(int i = 0; i < n; i++){
		if(a[i] <= x){
			stop = 1;
			break;
		}
	}

	if(stop == 1 && a[i] == x) return i;
	return -1;
}