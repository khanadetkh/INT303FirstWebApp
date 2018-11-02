/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myfirstproject;

/**
 *
 * @author INT303
 */
public class TestDice {
    public static void main(String[] args) {
        Dice d1 = new Dice();
        Dice d2 = new Dice();
        Dice d3 = new Dice();
        d1.roll();
        System.out.println(">d1 - face = " + d1.getFace());
        d2.roll();
        System.out.println(">d2 - face = " + d2.getFace());
        d3.roll();
        System.out.println(">d3 - face = " + d3.getFace());
        
        System.out.println("d1 - face = " + d1.getFace());
        System.out.println("d2 - face = " + d2.getFace());
        System.out.println("d3 - face = " + d3.getFace());
        
        d1.roll();
        d2.roll();
        d3.roll();
//        System.out.println("d1 - face = " + d1.getFace());
//        System.out.println("d2 - face = " + d2.getFace());
//        System.out.println("d3 - face = " + d3.getFace());
    }
}
