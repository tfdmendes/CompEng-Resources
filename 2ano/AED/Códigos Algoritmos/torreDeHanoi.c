void torreDeHanoi(char origem, char auxiliar, char destino, int n){
	
	if(n == 1){
		moverDisco(origem, destino);
		return;
	}
	
	torreDeHanoi(origem, auxiliar, destino, n-1);
	moverDisco(origem, destino);
	torreDeHanoi(auxiliar, origem, destino, n-1);

}