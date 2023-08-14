package MinhasSoluções;//Read the sales, % of commission and name of 10 sellers
//Return a relatory with name and amount of commission to receive
//Return total sales of all sellers
//Return the larger and smaller commission value and their respective names

import java.util.ArrayList;
import java.util.Scanner;

public class Question12 {
    public static void main(String[] args) {
        ArrayList<Double> arrayOfSalesSeller = new ArrayList<>();
        ArrayList<Double> arrayOfPercentualCommission = new ArrayList<>();
        ArrayList<Double> arrayOfCommission = new ArrayList<>();
        ArrayList<String> arrayOfSellersName = new ArrayList<>();

        Scanner scan = new Scanner(System.in);

        double totalSales = 0.00;

        double largerCommission = 0.00;
        int indexOfLargerCommission = 0;

        double smallerCommission = Double.MAX_VALUE;
        int indexOfSmallerCommission = 0;


        //Read the total sales, comission and name of sellers
        for(int i = 0; i < 3; i++) {
            //Read name
            System.out.println("Type the name of " + (i + 1) + "º seller: ");
            String name = scan.next();
            arrayOfSellersName.add(name);

            //Read total sales
            System.out.println("Type " + name + "'s total sales: ");
            double totalSalesSeller = scan.nextDouble();
            arrayOfSalesSeller.add(totalSalesSeller);

            //Read % commission
            System.out.println("Type " + name + "'s % commission: ");
            double percentCommission = scan.nextDouble();
            arrayOfPercentualCommission.add(percentCommission);

            //Calculate commission
            double commission = (totalSalesSeller * (percentCommission / 100));
            arrayOfCommission.add(commission);

            //Add sales to total
            totalSales += totalSalesSeller;

            //Verify commission > largerCommission
            if(commission > largerCommission) {
                largerCommission = commission;
                indexOfLargerCommission = i;
            }

            //Verify commission < smallerCommission
            if(commission < smallerCommission) {
                smallerCommission = commission;
                indexOfSmallerCommission = i;
            }
        }


        //Return seller's name and their respective commission
        System.out.println("---------- Sellers and their commissions");
        for(int i = 0; i < arrayOfSellersName.size(); i++) {
            System.out.println(arrayOfSellersName.get(i) + ": " + arrayOfCommission.get(i) + "(" + arrayOfPercentualCommission.get(i) + "% of " + arrayOfSalesSeller.get(i) + ")");
        }

        System.out.println("----------");

        //Total sales
        System.out.println("Total sales: " + totalSales);

        //larger commission to be received
        System.out.println(arrayOfSellersName.get(indexOfLargerCommission) + " will receive the larger commission!(" + arrayOfCommission.get(indexOfLargerCommission) + ")");

        //smaller commission to be received
        System.out.println(arrayOfSellersName.get(indexOfSmallerCommission) + " will receive the smaller commission!(" + arrayOfCommission.get(indexOfSmallerCommission) + ")");


        scan.close();
    }
}