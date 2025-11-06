#include <stdio.h>
#include "sum.h"
#include "arr.h"
#include "template_header.h"
#include "cJSON.h"
#include "zipconf.h"
int main()
{   
    int s; 
    s = sum(3,5);
    printf("sum is %d\n", s);
    array_size();
    #ifdef PRINT_ACTIVE
    printf("cjson version %d\n",CJSON_VERSION_MAJOR);
    printf("project name is %s\n", project_name);
    printf("lipzip version is %s\n", LIBZIP_VERSION);
    #endif
    return 0;
}