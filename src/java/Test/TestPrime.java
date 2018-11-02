/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import sit.int303.First.model.PrimeNumber;

/**
 *
 * @author INT303
 */
public class TestPrime {
    public static void main(String[] args) {
        PrimeNumber pn = new PrimeNumber(19);
        System.out.printf("%d is a prime Number? %b\n",pn.getNumber(),pn.isPrimeNumber());
        pn.setNumber(17);
        System.out.printf("%d is a prime Number? %b\n",pn.getNumber(),pn.isPrimeNumber());
    }
}
