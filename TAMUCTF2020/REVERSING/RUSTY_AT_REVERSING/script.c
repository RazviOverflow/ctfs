//RazviOverflow

#include <stdio.h>
#include <dlfcn.h>

void exported_callback() /*< Function we want to export */
{
    printf("Hello from callback!\n");
}

void unexported_callback() /*< Function we don't want to export */
{
    printf("Hello from unexported callback!\n");
}

typedef void (*lib_func)();

int main()
{
   void     *handle  = NULL;
   lib_func  func    = NULL;
   handle = dlopen("./librusty_at_reversing.so", RTLD_NOW | RTLD_GLOBAL);
   if (handle == NULL)
   {
       fprintf(stderr, "Unable to open lib: %s\n", dlerror());
       return -1;
   }
   func = dlsym(handle, "get_flag");

   if (func == NULL) {
       fprintf(stderr, "Unable to get symbol\n");
      return -1;
   }

   printf("Before calling get_flag\n");

   func();

   printf("After calling get_flag\n");
   return 0;
}