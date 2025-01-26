struct _AVLItemNode {
    ItemType item;
    Struct _AVLTreeNode* left;
    Struct _AVLTreeNode* right;
    int height;
}

//! -------------- ALTURA --------------
int AVLTreeGetHeight(const AVLTree* root){
    if(root == NULL) return -1;
    return root->height;
}


//! ----------- ATUALIZAR ALTURA ----------