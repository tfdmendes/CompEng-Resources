// Exercicio 3 
//a 
unsigned int CountNonLeafNodes(pointer root){

	if(root == NULL) return 0;
	if(root->left == NULL && root->right == NULL) return 0;
	return 1 + CountNonLeafNodes(root->left) + CountNonLeafNodes(root->right);

}



//b 
unsigned int CountValuesInRange(pointer root, int a, int b){
	if(root == NULL) return 0;

	if(root->item < a) return CountValuesInRange(root->right, a, b);

	if(root->item > b) return CountValuesInRange(root->left, a, b);

	if(root->item == a) return 1 + CountValuesInRange(root->right, a, b);

	if(root->item == b) return 1 + CountValuesInRange(root->left, a, b);

	return 1 + CountValuesInRange(root->left, a, b) + CountValuesInRange(root->right, a, b);
}