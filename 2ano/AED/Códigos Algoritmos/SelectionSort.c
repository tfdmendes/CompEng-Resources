// Versão maior Elemento
void SelectionSort(int a[], int n){
	
	for(int k = n-1; k < 0; k--){
		indexMax = 0;

		for(int i = 0; i < k; i++){
			if(a[i] >= a[indexMax]) indexMax = i;
		}

		if(indexMax != k) swap(&a[k], &a[indexMax])
	}
}



// VERSÃO MENOR ELEMENTO
void selectionSort(int a[], int n){
	
	for(int k = 0; k < n; k++){
		indexMin = 0;

		for(int i = 1; i < n; i++){
			if(a[i] < a[indexMin]) indexMin = i;
		}

		if(indexMin != k) swap(&a[k], &a[indexMin]);

	}

}