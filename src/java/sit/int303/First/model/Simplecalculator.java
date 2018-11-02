/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.First.model;

/**
 *
 * @author INT303
 */
public class Simplecalculator {

    private int x;
    private int y;
    private String operator;

    public int getResult() {
        int result = 0;
        if (operator.equals("+")) {
            result = x + y;
        }
        if (operator.equals("-")) {
            result = x - y;
        }
        if (operator.equals("*")) {
            result = x * y;
        }
        if (operator.equals("/")) {
            result = x / y;
        }
        return result;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    @Override
    public String toString() {
        return (String.format("<h1> x = %d, y = %d, %d %s %d = %d</h1>\n", x, y, x, operator, y, getResult()));
    }

}
