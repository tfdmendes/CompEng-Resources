//
// Algoritmos e Estruturas de Dados --- 2024/2025
//
// JMR, 2021
//

// Complete the functions (marked by ...)
// so that they pass all tests.

#include "Person.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// This variable stores the last ID that was assigned to a Person.
// It should be used to assign serial, unique IDs automatically upon creation.
// The first person will have id=1, the second id=2, etc.
static int lastID = 0;

// Alocate and store a Person.
// Returns the pointer to the new structure,
// or NULL if allocation fails.
// The names are copied to internally allocated memory.
Person *PersonCreate(const char *fname, const char *lname, int yy, int mm,
                     int dd) {
  Person* p = (Person*)malloc(sizeof(Person));
  if (p == NULL) abort();

  p->firstName = (char*)malloc(strlen(fname) + 1);
  p->lastName = (char*)malloc(strlen(lname) + 1);
  if(p->firstName == NULL || p->lastName == NULL){
    free(p);
    abort();
  }
  strcpy(p->firstName, fname);
  strcpy(p->lastName, lname);

  p->id = ++lastID;
  p->birthDate.year = (uint16_t)yy;
  p->birthDate.month = (uint8_t)mm;
  p->birthDate.day = (uint8_t)dd;

  return p;
}

// Free the memory pointed to by *pp and by the names inside it,
// and invalidate *pp contents.
// Precondition: *pp must not be NULL.
// Postcondition: *pp is set to NULL.
void PersonDestroy(Person **pp) {
  assert(*pp != NULL);
  Person *p = *pp;
  free(p);
  *pp = NULL;
}

// Prints a person formatted as "[id, lastname, firstname, birthdate]",
// followed by a suffix string.
void PersonPrintf(Person *p, const char *suffix) {
  if (p == NULL)
    printf("NULL%s", suffix);
  else
    printf("(%d, %s, %s, %s)%s", p->id, p->lastName, p->firstName,
           DateFormat(&(p->birthDate), YMD), suffix);
}

// Compare birth dates of two persons.
// Return a negative/positive integer if p1 was born before/after p2.
// Return zero if p1 and p2 were born on the same date.
int PersonCompareByBirth(const Person *p1, const Person *p2) {
  int yearResult = (int) p1->birthDate.year - (int)p2->birthDate.year;
  int monthResult = (int) p1->birthDate.month - (int)p2->birthDate.month;
  int dayResult = (int) p1->birthDate.day - (int)p2->birthDate.day;
  if(yearResult == 0){
    if(monthResult == 0){
      return dayResult;
    } else {
      return monthResult;
    }
  }else{
    return yearResult;
  } 

  return 0;
}

// Compare two persons by last name, then first name (if last name is the same).
// Return a -/+/0 integer if p1 precedes/succeeds/is equal to p2.
int PersonCompareByLastFirstName(const Person *p1, const Person *p2) {
  int lastNameComparison = strcmp(p1->lastName, p2->lastName);
  if(lastNameComparison == 0) return strcmp(p1->firstName, p2->firstName);
  return lastNameComparison;
}
