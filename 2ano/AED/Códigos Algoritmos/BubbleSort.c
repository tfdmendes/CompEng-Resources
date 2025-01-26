void BubbleSort(int a[], int n){
	int k = n;
	int stop = 0;

	while(stop == 0){
		stop = 1;
		k--;

		for(int i = 0; i < k; i++){
			if(a[i] < a[i+1]){
				swap(&a[i], &a[i+1]);
				stop = 0;
			}

		}

	}

}