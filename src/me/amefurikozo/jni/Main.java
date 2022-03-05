package me.amefurikozo.jni;

public class Main {
    static {
        System.loadLibrary("native");
    }

    private native void sayHello();

    public static void main(String[] args) {
        new Main().sayHello();
    }
}