import models.*;

import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
       Aluno Lucas = new Aluno("Lucas", 156, "12912872", "SENAC");


       //Professor Bruno = new Professor("Bruno Kurzawe", 1, "12122", LocalDate.of(2023, 10, 10));


       Funcionario Rafael = new Funcionario("Rafael", 3, 1200.00, "Dev Full-Stack");


       Diretor LucasRebello = new Diretor("Lucas Rebello", "129129829", 3000.00, 1000.00, 500.00, 100.00);
       LucasRebello.getSalario();
       LucasRebello.toString();


       Gerente Daniel = new Gerente("Daniel Dias", "18128172", 5000.00, 2000.00, 1000.00, 30.00);
       Daniel.getSalario();
       Daniel.toString();
    }
}