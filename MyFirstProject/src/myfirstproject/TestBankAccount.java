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
public class TestBankAccount {
    public static void main(String[] args) {
        BankAccount ba = new BankAccount();
        ba.setAccountNumber(90000178);
        ba.setName("Somchai");
        ba.deposit(29500.50);
        ba.withdraw(20000);
        ba.withdraw(9000);
        
        try{
            ba.withdraw(900000);
        }catch(Exception e){
            System.out.println(ba.getBalance());
        }
            
        //System.out.println(ba.getBalance());
        
        
        
    }
}
