
# Easytrace - Simple error handling in c
*allows code to be run after a fatal error occurs to gracefully exit
*prints a detailed stack trace of function calls leading up to error
*prines line number and custom error text when an error occurs

# Usage

```c
int main(int argc, char *argv[] )
{
    //Any code wrapped in this function will allways return
    e_wwrap_err_checking(program_main, argc, argv);

    //Any code here will run even if an error occurs

    printf("Ran at the end of main\n");
    return 1;
}
```
