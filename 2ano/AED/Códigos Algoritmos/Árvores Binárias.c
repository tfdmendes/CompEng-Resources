// ALGORITMOS PARA AS ÁRVORES

struct _TreeNode{
	ItemType item;
	struct _TreeNode* left;
	struct _TreeNode* right;
}


//!--------------------- NÚMERO NODES ---------------------
int TreeGetNumberOfNodes(const Tree* root){
	if (root == NULL) return 0;
	return 1  + TreeGetNumberOfNodes(root->left) + TreeGetNumberOfNodes(root->right);
}


//!--------------------- ALTURA ARVORE ---------------------
int TreeGetHeight(const Tree* root){
	if(root == NULL) return -1;

	int heightLeft = 1 + TreeGetHeight(root->left);
	int heightRight = 1 + TreeGetHeight(root->right);

	if(heightLeft > heightRight) 
		return heightLeft;
	else
		return heightRight;
}

//!--------------------- SE ÁRVORES IGUAIS ---------------------
int TreeEquals(const Tree* root1, const Tree* root2){
	// Se ambos os nós forem nulos as árvores podem ser iguais
	if(root1 == NULL && root2 == NULL) return 1;

	// Se um dos nós for nulo as árvores não vão ser iguais
	if(root1 == NULL || root2 == NULL) return 0;

	if(root1->item == root2->item){
		return TreeEquals(root1->left, root2->left) && TreeEquals(root1->right, root2->right);
	}

	return 0;
}



//!--------------------- NODES QUE SÃO FOLHAS ---------------------
int GetNumLeafNodes(const Tree* root){
	if(root == NULL) return 0;

	if(root->left == NULL && root->right == NULL) return 1;

	return GetNumNonLeafNodes(root->left) + GetNumNonLeafNodes(root->right);
}


//!--------------------- NODES QUE NÃO SÃO FOLHAS ---------------------
int GetNumNonLeafNodes(const Tree* Root){
	if(root == NULL) return 0;

	if(root->left == NULL && root->right == NULL) return 0;

	return 1 + GetNumNonLeafNodes(root->left) + GetNumNonLeafNodes(root->right);
}



//!---------- ÁRVORES ESPELHADAS ----------
int MirroredTrees(const Tree* root1, const Tree* root2){
	if(root1 == NULL && root2 == NULL) return 1;

	if(root1 == NULL || root2 == NULL) return 0;

	if(root1->item == root2->item)
		return MirroredTrees(root1->right, root2->left) && MirroredTrees(root1->left, root2->right);

	return 0;
}


//!---------- ITEM PERTENCE À ÁRVORE ----------
int ItemInTree(const Tree* root, ItemType item){
	if(root == NULL) return 0;

	if(root->item == item) return 1;

	return ItemInTree(root->left, item) || ItemInTree(root->right, item);
}



//!---------- MENOR ELEMENTO ----------
ItemType TreeGetMin(const Tree* root){
	if(root == NULL) return NO_ITEM;

	ItemType min = root->item;

	ItemType minLeftSubTree = TreeGetMin(root->left);
	if(minLeftSubTree < min && minLeftSubTree != NO_ITEM)
		min = minLeftSubTree;

	ItemType minRightSubTree = TreeGetMin(root->right);
	if(minRightSubTree < min && minRightSubTree != NO_ITEM)
		min = minRightSubTree;

	return min;
}


//!////////////////////// TRAVESSIAS RECURSIVAS ////////////////////////

//* Pre-Ordem - NLR
void TreeTraverseInPREOrder(Tree* root, void (*function)(ItemType* p)){
	if(root == NULL) return;

	function(&(root->item));
	return TreeTraverseInPREOrder(root->left, function);
	return TreeTraverseInPREOrder(root->right, function);
}

//* Em-Ordem - LNR
void TreeTraverseINOrder(Tree* root, void (*function)(ItemType* p)){
	if(root == NULL) return;

	return TreeTraverseInPREOrder(root->left, function);
	function(&(root->item));
	return TreeTraverseINOrder(root->right, function);
}


//* Pós-Ordem - LRN
void TreeTraverseInPOSTOrder(Tree* root, void(*function)(ItemType* p)){
	if(root == NULL) return;

	return TreeTraverseInPOSTOrder(root->left, function);
	return TreeTraverseInPOSTOrder(root->right, function);
	function(&(root->item));
}



//!////////////////////// TRAVESSIAS ITERATIVAS ///////////////////////////////////

//* Breadth Fist Traversal - QUEUE
void TreeTraverseByLevelWithQueue(Tree* root, void (*function)(ItemType* p)){
	if(root == NULL) return;

	Queue* queue = QueueCreate();

	QueueEnqueue(queue, root);

	while(QueueIsEmpty(queue) == 0){
		Tree *p = QueueDeQueue(queue);

		function(&(p->item));

		if(p->left != NULL)
			QueueEnqueue(queue, p->left);
		if(p->right != NULL)
			QueueEnqueue(queue, p->right);
	}

	QueueDestroy(queue);

}

//* Depth First Traversal - STACK
void TreeTraverseByDepthWithStack(Tree* root, void (*function)(ItemType* p)){
	if(root == NULL) return;

	Stack* stack = StackCreate();

	StackPush(stack, root);

	while(StackIsEmpty(stack) == 0){

		Tree* p = StackPop(stack);

		function(&(p->item));

		if(p->right != NULL)
			StackPush(stack, p->right);
		if(p->left != NULL)
			StackPush(stack, p->left);
	}

	StackDestroy(stack);
}


//* Travessia Iterativa EM-ORDEM (LNR), usando uma PILHA/STACK
void TreeTraversalInOrderWithStack(const Tree* root, void (*function)(ItemType* p)){

	if(root == NULL) return;
	int keepGoing = 1;
	Tree* p = root;
	Stack* stack = StackCreate();

	StackPush(stack, root);

	while(keepGoing == 1){
		
		if(p != NULL){w
			StackPush(stack, p->left);
		} else {
			// Livrar de Node NULL que está no topo
			StackPop(stack);
			if(StackIsEmpty(stack) == 1){ 
				keepGoing = 0;
			} else {
				p = StackPop(stack);
				function(&(p->item));
				StackPush(stack, p->right);
			}
		}
	}
}


