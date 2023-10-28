package crud.produto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import crud.produto.model.ProdutoEntity;
import crud.produto.repository.ProdutoRepository;

@Controller
public class ProdutoController {
    @Autowired
    private ProdutoRepository repositorio;

    @GetMapping(value = "/produto")
    public String produtoPage(){
        return "produto/form";
    }


    @PostMapping(value = "/produto/salvar")
    public String salvarProduto(@ModelAttribute ProdutoEntity produto){        
        repositorio.save(produto);

        return "produto/response";
    }


    @GetMapping(value = "/produto/listar")
    public String listarProduto(Model listar){
        List<ProdutoEntity> produtos = repositorio.findAll();
        listar.addAttribute("produtos",produtos);

        return "produto/listar";
    }


    /* @PostMapping(value = "/produto/editar/${id}")
    public String editarProduto(@ModelAttribute ProdutoEntity produto){
        repositorio.save(produto);

        return "produto/listar";
    } */


    @GetMapping(value = "produto/excluir/{id}")
    public String excluirProduto(@PathVariable("id") Long id){
        repositorio.deleteById(id);

        return "produto/listar";
    }
}