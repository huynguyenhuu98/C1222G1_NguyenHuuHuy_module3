package ss10_bai2.model;

public class Calculator {
    public static float calculator(float firstNumber, float secondNumber, String operator) {
        switch (operator) {
            case "plu":
                return firstNumber + secondNumber;
            case "min":
                return firstNumber - secondNumber;
            case "mul":
                return firstNumber * secondNumber;
            case "div":
                if (secondNumber == 0) {
                    throw new RuntimeException("can not divided for 0");
                } else {
                    return firstNumber / secondNumber;
                }
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}