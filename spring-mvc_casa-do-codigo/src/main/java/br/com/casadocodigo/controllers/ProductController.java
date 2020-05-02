package br.com.casadocodigo.controllers;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.daos.ProductDAO;
import br.com.casadocodigo.models.Product;
import br.com.casadocodigo.models.enums.BookType;

@Controller
@Transactional
public class ProductController {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/form")
	public ModelAndView form() {
		ModelAndView modelAndView = new ModelAndView("products/form");
		modelAndView.addObject("bookTypes", BookType.values());
		return modelAndView;
	}
	
	@RequestMapping(value = "/produtos", method = RequestMethod.POST)
	public String save(Product product) {
		productDAO.save(product);
		System.out.println("Cadastrando o produto: " + product);
		return "products/ok";
	}

	@RequestMapping(value = "/produtos", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelAndView = new ModelAndView("products/list");
		modelAndView.addObject("products", productDAO.list());
		return modelAndView;
	}

}
