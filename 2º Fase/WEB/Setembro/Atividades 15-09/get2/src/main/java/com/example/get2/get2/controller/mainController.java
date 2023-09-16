package com.example.get2.get2.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.HashMap;
import java.util.Map;


@RestController
public class mainController {
    private HashMap<String, String> arrayConvidado = new HashMap<>();



    @Override
    public String toString(){
         StringBuilder stringBuilder = new StringBuilder();
    
        for (Map.Entry<String, String> entry : arrayConvidado.entrySet()) {
            String token = entry.getKey();
            String nome = entry.getValue();
            
            stringBuilder.append("Token: ").append(token).append(" - Nome: ").append(nome).append("\n");
        }

        return stringBuilder.toString();
    }   


    @GetMapping(value = "/convidado/{nome}-{token}")
    public void setConvidado(@PathVariable String token, @PathVariable String nome) {
        this.arrayConvidado.put(token, nome);
    }


    @GetMapping(value = "/limpar-convidados")
    public String limparConvidados() {
        this.arrayConvidado.clear();

        return "Lista limpa! Pronta para o próximo anivesário?";
    }


    @RequestMapping(value="/lista-convidados")
    public String getListaConvidados() {
        return arrayConvidado.toString();
    }
}