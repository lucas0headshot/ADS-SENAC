public class Ex_2 {
    public static void main(String[] args) {
        //Imprimir dia da semana correspondente
        System.out.println("Imprimir dia da semana correspondente:");
        byte diaSemana = 3;
        switch (diaSemana) {
            case 1:
                System.out.println(diaSemana + " = segunda");
                break;

            case 2:
                System.out.println(diaSemana + " = terça-feira");
                break;

            case 3:
                System.out.println(diaSemana + " = quarta-feira");
                break;

            case 4:
                System.out.println(diaSemana + " = quinta-feira");
                break;

            case 5:
                System.out.println(diaSemana + " = sexta-feira");
                break;

            case 6:
                System.out.println(diaSemana + " = sabádo");
                break;

            case 7:
                System.out.println(diaSemana + " = domingo");
                break;

            default:
                System.out.println("Dia inválido");
        }


        //Imprimir "10" 20x
        System.out.println("Imprimir x, começando em 10, 20 vezes com while:");
        byte i = 0;
        byte x = 10;
        while(i <= 20) {
            System.out.println(x);
            x++;
            i++;
        }


        //Ex anterior com do-while
        System.out.println("Imprimir x, começando em 10, 20 vezes com do-while:");
        i = 0;
        x = 0;
        do {
            System.out.println(x);
            x++;
            i++;
        } while(i <= 20);


        //Calcular área de um trapézio
        int h = 1;
        int b = 3;
        int B = 4;
        double area = (h * (b + B)) / 2;
        System.out.println("Área: " + area);
    }
}