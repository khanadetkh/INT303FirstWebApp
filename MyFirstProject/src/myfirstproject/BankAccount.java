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
public class BankAccount {
    private int accountNumber;
    private String name;
    private double balance;
    
    public void deposit(double amount){
        this.balance += amount;
    }
    
    public void withdraw(double amount){
        if(this.balance<amount){
            throw new RuntimeException("Balance not enough !!! balance" + 
                    this.balance + " amount " + amount);
        }else{
            this.balance -= amount;
        }
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }
     
    
    
}
