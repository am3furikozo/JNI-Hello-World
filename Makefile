all: java_class_and_c_header c_object shared_object

java_class_and_c_header:
	javac -d out/production/JNI -h inc src/me/amefurikozo/jni/Main.java

c_object: java_class_and_c_header
	g++ -c -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux -Iinc \
		-o out/me_amefurikozo_jni_Main.o src/me_amefurikozo_jni_Main.c

shared_object: c_object
	mkdir -p out/production/JNI/lib
	g++ -shared -fPIC -lc -o out/production/JNI/lib/libnative.so \
		out/me_amefurikozo_jni_Main.o

run:
	java -cp out/production/JNI -Djava.library.path=out/production/JNI/lib me.amefurikozo.jni.Main

clean:
	rm -rf out/*
	rm -rf lib/native/me_amefurikozo_jni_Main.h

.PHONY: run clean
