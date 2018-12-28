

//Includes needed for stack tracing/error checking
#include "error.h"
#include "trace.h"

#include <stdlib.h>
#include <stdio.h>

//New program main with error checking
void program_main(int argc, char *argv[] );


int main(int argc, char *argv[] )
{
    e_wwrap_err_checking(program_main, argc, argv);

    //Any code here will run even if an error occurs

    printf("Ran at the end of main\n");
    return 1;
}

void program_main(int argc, char *argv[] )
{
    //Begin every function with this printf style function in order to add to stack trace
    IF_DEBUG t_push("program_main(%d,%p)",argc,argv);

    printf("hello world\n");

    //example error being called
    e_error(MALLOC);


    IF_DEBUG t_pop();


}

