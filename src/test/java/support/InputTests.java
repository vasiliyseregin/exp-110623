package support;

import java.util.Scanner;

public class InputTests {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Type operand 1: ");
        String op1 = scanner.nextLine();
        System.out.println("Type operation (+, -, *, /): ");
        String operation = scanner.nextLine();
        System.out.println("Type operand 2: ");
        String op2 = scanner.nextLine();

        double result = calculate(op1, op2, operation);
        printResult(result);
    }

    static double calculate(String op1, String op2, String operation) {
        double result = 0;
        switch (operation) {
            case "+":
                result = Double.parseDouble(op1) + Double.parseDouble(op2);
                break;
            case "-":
                result = Double.parseDouble(op1) - Double.parseDouble(op2);
                break;
            case "*":
                result = Double.parseDouble(op1) * Double.parseDouble(op2);
                break;
            case "/":
                result = Double.parseDouble(op1) / Double.parseDouble(op2);
                break;
        }
        return result;
    }

    static void printResult(double result) {
        System.out.println("The result: " + result);
    }
}
