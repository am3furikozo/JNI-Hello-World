#include <stdio.h>
#include "me_amefurikozo_jni_Main.h"

JNIEXPORT void JNICALL Java_me_amefurikozo_jni_Main_sayHello
  (JNIEnv *, jobject) 
{
    printf("Hello from C programming language!\n");
}
