# JNI Hello World

First of all, to create a native method definition, we should use the -h flag of the Java compiler

```bash
make java_class_and_c_header
```

Next, we need to create an object file for our native library

```bash
make c_object
```

and create a shared object

```bash
make shared_object
```

Now we can run our java application

```bash
make run
```