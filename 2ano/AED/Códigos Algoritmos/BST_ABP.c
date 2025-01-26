// ÁRVORES BINÁRIAS DE PROCURA (ABP) - BINARY SEARCH TREE (BST)



//! --------------------------------- MINIMO ---------------------------------
//* Recursivo
ItemType BSTreeGetMin (const BSTree* root){
	if(root == NULL) return NO_ITEM;

	if(root->left == NULL) return root->item;

	return BSTreeGetMin(root->left);
}


//* Iterativo
ItemType BSTreeGetMinIterative (const BSTree* root){
	if(root == NULL) return NO_ITEM;

	while(root->left != NULL){
		root=root->left;
	} 

	return root->item;
}



//! --------------------------------- MAXIMO  ---------------------------------
//* Recursivo
ItemType BSTreeGetMax(const BSTree* root){
	if(root == NULL) return NO_ITEM;

	if(root->right == NULL) return root->item;

	return BSTreeGetMax(root->right);
}

//* Iterativo
ItemType BSTreeGetMaxIterative(const BSTree* root){
	if(root == NULL) return NO_ITEM;

	while(root->right != NULL){
		root = root->right;
	}
	return root->item;
}

//! --------------------------------- PROCURAR ELEMENTO  ---------------------------------
//* Iterativo
int BSTreeContains(const BSTree* root, const ItemType item){
	while(root != NULL){
		if(item == root->item) return 1;

		if(item < root->item)
			root = root->left;
		else 
			root = root->right;
	}
	return 0;
}

//* Recursivo
BSTree* BSTreeContains(const BSTree* root, const ItemType item){
	if(root == NULL) return NULL;

	if(root->item == item) return root;

	if(item < root->item)
		return BSTreeContains(root->left, item);
	if(item > root->item)
		return BSTreeContains(root->right, item);

	return NULL;
}

//! --------------------------------- ADICIONAR NODE ---------------------------------

//* Iterativo
int BSTreeAdd(BsTree** pRoot, const ItemType item){
	BSTree* root = *pRoot;

	struct _BSTreeNode* new = (struct _BSTreeNode*)malloc(siezeof(*new));
	assert(new != NULL);

	new->item = item;
	new->left = new ->right = NULL;

	if(root == NULL){
		*pRoot = new;
		return 1;
	}

	struct _BSTreeNode* prev = NULL;
	struct _BSTreeNode* current = root;

	while(current != NULL){
		if(current->item == item){
			free(new);
			return 0;
		}
		
		prev = current;
		if(item < current->item)
			current = current->left;
		if(item > current->item)
			current = current->right;
	}

	if(prev->item > item)
		prev->left = new;
	else 
		prev->right = new;

	return 1;
}

//* Recursivo
int BSTAddElement(BSTree** root, int element) {
    if (*root == NULL) {
        *root = (BSTree*)malloc(sizeof(BSTree));
        if (*root == NULL) return 0; // Falha na alocação de memória

        (*root)->item = element;
        (*root)->left = (*root)->right = NULL;  
        return 1; 
    }

    if ((*root)->item == element) {
        return -1; // Elemento já existe
    }

    if (element < (*root)->item) 
        return BSTAddElement(&((*root)->left), element); 

	return BSTAddElement(&((*root)->right), element); 
    
    
}



//! --------------------------------- REMOVER NODE ---------------------------------
//* Recursivo
int BSTreeRemove(BSTree** pRoot, const ItemType item){
	BSTree* root = *pRoot;

	if(root == NULL) return 0;

	if(root->item == item){
		_removeNode(pRoot);
		return 1;
	}

	if(item < root->item){
		return BsTreeRemove(&(root->left), item);
	} 
	return BsTreeRemove(&(root->right), item);
}


//! --------------------------------- REMOVER NODE MENOR ---------------------------------
//* Recursivo
int BSTreeRemoveSmallestRecursive(BSTree** pRoot){
	BSTree* root = *pRoot;

	if(root == NULL) return -1;

	if(root->left == NULL){
		_removeNode(pRoot);
		return 1;
	}
	return BSTreeRemoveSmallestRecursive(&(root->left));
}



//! --------------------------------- REMOVER NODE MAIOR ---------------------------------
//* Recursivo
int BSTreeRemoveBiggestRecursive(BSTree** pRoot){
	BSTree* root = *pRoot;

	if(root == NULL) return -1;

	if(root->root == NULL){
		_removeNode(pRoot);
		return 1;
	}
	return BSTreeRemoveSmallestRecursive(&(root->right));
}