package com.forex;

import main.java.com.forex.Forex;

public class Main {
    public static void main(String[] args) {
        Forex forex = new Forex();
        double amountInLcy = 2349.45;
        String fcy1 = "USD";
        String fcy2 = "RUB";
        String fcy3 = "RWF";

        String param1 = fcy1 + "]" + amountInLcy;   // "USD]2349.45"
        double amountInUSD = forex.calculate(param1);

        String param2 = fcy2 + "]" + amountInLcy;   // "RUB]2349.45"
        double amountInRUB = forex.calculate(param2);

        String param3 = fcy3 + "]" + amountInLcy;   // "RWF]2349.45"
        double amountInRWF = forex.calculate(param3);

        System.out.println("EUR " + amountInLcy + " = USD "+ amountInUSD); //EUR 2349.45 = USD 2769.3
        System.out.println("EUR " + amountInLcy + " = RUB "+ amountInRUB); //EUR 2349.45 = RUB 211409.38
        System.out.println("EUR " + amountInLcy + " = RWF "+ amountInRWF); //EUR 2349.45 = RWF 2472796.13
    }
}
