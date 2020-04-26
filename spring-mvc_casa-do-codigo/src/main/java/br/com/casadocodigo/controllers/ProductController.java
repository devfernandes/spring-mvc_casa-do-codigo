package br.com.casadocodigo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.casadocodigo.models.Product;

@Controller
public class ProductController {
	@RequestMapping("/produtos")
	public String save(Product product) {
		System.out.println("Cadastrando o produto");
		return "products/ok";
	}

	@RequestMapping("/produtos/form")
	public String form() {
		return "products/form";
	}

}
