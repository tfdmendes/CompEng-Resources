
S(n) = { n, se 0,1,2,3,4

		n * S(n/5), para  > 4


double s_rec (int n){
	if(n <= 4) return n;
	return n*function(n/5);
}



Versão DP

double s_iter(unsigned int n) {
    double result[n];
    for (unsigned int i = 0; i <= 4; i++) {
        result[i] = i;
    }
    for (unsigned int i = 5; i <= n; i++) {
        result[i] = i * result[i / 5];
    }
    return result[n];
}
