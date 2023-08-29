package com.example.ss9.service;

public class DiscountService {
    public static double discount(double price, double discount) {
        double discount_amount = price * discount * 0.01;
        return discount_amount;
    }
}
