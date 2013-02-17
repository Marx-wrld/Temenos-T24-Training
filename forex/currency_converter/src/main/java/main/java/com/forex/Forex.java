package main.java.com.forex;

public class Forex {

    public Forex(){
        //
    }
_
    public double calculate(String params){
        //params: FCY]AMOUNT(eg: "USD]2349.45")
        String[] values = params.split("]");
        String fcy = values[0];
        double amount = Double.parseDouble(values[1]);
        double rate = getRates(fcy);
        return roundNumber(amount * rate);
    }

    private double getRates(String fcy){
        double rate;
        switch (fcy){
            case "USD":
                rate =  1.1787;
                break;
            case "RUB":
                rate = 89.9825;
                break;
            case "RWF":
                rate = 1052.5;
                break;
            default:
                rate = 1;
        }
        return rate;
    }

    private double roundNumber(double value) {
        double scale = 100;
        return Math.round(value * scale) / scale;
    }
}
