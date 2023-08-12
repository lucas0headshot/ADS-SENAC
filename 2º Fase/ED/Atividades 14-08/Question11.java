//Control stock of 10 products
//Read 10 codes and their respective amount on two arrays
//Loop until the user want to stop, reading the code and product that client want to buy

import java.io.IOException;
import  java.util.ArrayList;
import java.util.Scanner;

public class Question11 {
    public static void main(String[] args) throws IOException {
        ArrayList<Integer> arrayOfProductCode = new ArrayList<>();
        ArrayList<Integer> arrayOfProductStock = new ArrayList<>();

        Scanner scan = new Scanner(System.in);


        //Read 10 product codes and their respective stock
        for(int i = 0; i < 3; i++) {
            System.out.println("----------");
            System.out.println("Type the code of " + (i + 1) + "º product: ");
            arrayOfProductCode.add(scan.nextInt());

            System.out.println("Type the actual stock: ");
            arrayOfProductStock.add(scan.nextInt());
        }


        //Loop until user want to stop
        int clientCode;
        do {
            System.out.println("---------- Products code and their Stock ----------");
            //List the products and their stock
            for(int i = 0; i < arrayOfProductStock.size(); i++) {
                System.out.println("Code: " + arrayOfProductCode.get(i) + " | Stock: " + arrayOfProductStock.get(i));
            }


            //Read client code
            System.out.println("---------- Order");
            System.out.println("Type client code(0 = closes): ");
            clientCode = scan.nextInt();

            //Read code that client want to buy
            System.out.println("Type product code: ");
            int productCode = scan.nextInt();


            if(arrayOfProductCode.contains(productCode)) {
                int actualStock = arrayOfProductStock.get(productCode);
                System.out.println("Type the amount needed: ");
                int amountNeeded = scan.nextInt();

                if(actualStock >= amountNeeded) {
                    arrayOfProductStock.set(productCode, actualStock - amountNeeded);
                    System.out.println("Order answered!");
                } else {
                    System.out.println("Insufficient stock!");
                }
            } else {
                System.out.println("That product doesn't exist!");
            }
        } while(clientCode != 0);


        //Return the products and their stocks
        System.out.println("---------- Products and stocks update ----------");
        for(int i = 0; i < arrayOfProductStock.size(); i++) {
            System.out.println("Code: " + arrayOfProductCode.get(i) + " | Stock: " + arrayOfProductStock.get(i));
        }


        scan.close();
    }
}