package com.marx;

//calling java method in T24

public class Main {
    public static void main(String[] args) {
        Greeting greeting = new Greeting();
        String message = greeting.hello("Aaron");
        System.out.println(message);
    }
}