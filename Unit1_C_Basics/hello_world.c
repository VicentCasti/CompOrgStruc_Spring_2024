// Vicente Castilleja

// Must always be included
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// A fragment of code with a given name
#define NUMBER 5

int main(int argc, char* argv[]) {
    printf("Hello World!\n");
    printf(":)\n");
    printf("%d) option %s", 1, "one");

    for ( int x = 0; x < NUMBER; x++) {
        // do something
    }

    // statically typed
    int whole_number = 6;
    // Reference a pointer
    int* whole_number_pointer = &whole_number;
    //Dereference a pointer
    *whole_number_pointer = 46;

    printf("\n%d", whole_number);
    printf("\n%d", *whole_number_pointer);
    // The correct way to print a pointer, using %p
    printf("\n%p", whole_number_pointer);

    whole_number_pointer += 1;

    printf("\n%p", whole_number_pointer);

    // going to be casting an int when malloc
    int* int_pointer = 
        (int*) malloc(sizeof(int));
    printf("\n%d", *int_pointer);

    // exersize with a double pointer
    double* double_pointer =
        (double*) malloc(sizeof(double));
    *double_pointer = 102.45;
    printf("\n%lf", *double_pointer);

    // segfault: program tries to access memories that isn't meant to.
    // Stops the program immediately. Bad practice
    int* bad_pointer = (int*) 4;
    printf("\n%d", *bad_pointer);

    char phrase[20];

    int* int_array = calloc(4, sizeof(int));
    
    *(int_array + 3) = 56;

    return 0; // no errors
}