//
// Algoritmos e Estruturas de Dados --- 2024/2025
//
// Joaquim Madeira, November 2023, November 2024
//
// Integers Binary Search Tree ---INCOMPLETE
//
// SOME FUNCTIONS ARE INCOMPLETE on BinarySearchTree.c
//

#include <stdio.h>
#include <stdlib.h>

#include "BinarySearchTree.h"

void printInteger(int* p) { printf("%d ", *p); }

void multiplyIntegerBy2(int* p) { *p *= 2; }

int main(void) {
  BSTree* tree = createExampleBSTree(16);

  if (BSTreeIsBST(tree)) {
    printf("Created an example BSTree\n");
  } else {
    printf("The created BSTree is NOT OK\n");
  }

  if (BSTreeIsEmpty(tree)) {
    printf("The created BSTree is EMPTY\n");
  } else {
    printf("The created BSTree is OK\n");
  }

  printf("Number of nodes = %d\n", BSTreeGetNumberOfNodes(tree));

  printf("Height = %d\n", BSTreeGetHeight(tree));

  printf("SMALLEST value = %d\n", BSTreeGetMin(tree));

  printf("LARGEST value = %d\n", BSTreeGetMax(tree));

  printf("PRE-Order traversal : ");

  BSTreeTraverseInPREOrder(tree, printInteger);

  printf("\n");

  printf("IN-Order traversal : ");

  BSTreeTraverseINOrder(tree, printInteger);

  printf("\n");

  printf("POST-Order traversal : ");

  BSTreeTraverseInPOSTOrder(tree, printInteger);

  printf("\n");

  printf("LEVEL-by-LEVEL traversal using a QUEUE: ");

  BSTreeTraverseLevelByLevelWithQUEUE(tree, printInteger);

  printf("\n");

  printf("REMOVING some elements\n");

  for (int i = 0; i < 25; i++) {
    BSTreeRemove(&tree, i);
  }

  printf("PRE-Order traversal : ");

  BSTreeTraverseInPREOrder(tree, printInteger);

  printf("\n");

  printf("IN-Order traversal : ");

  BSTreeTraverseINOrder(tree, printInteger);

  printf("\n");

  printf("POST-Order traversal : ");

  BSTreeTraverseInPOSTOrder(tree, printInteger);

  printf("\n");

  printf("LEVEL-by-LEVEL traversal using a QUEUE: ");

  BSTreeTraverseLevelByLevelWithQUEUE(tree, printInteger);

  printf("\n");

  BSTreeDestroy(&tree);

  printf("The BSTree was DESTROYED\n");

  if (BSTreeIsEmpty(tree)) {
    printf("The BSTree is NOW EMPTY\n");
  } else {
    printf("Something WRONG happened!!\n");
  }

  return 0;
}
