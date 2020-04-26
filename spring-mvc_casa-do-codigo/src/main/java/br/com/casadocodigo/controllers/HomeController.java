package br.com.casadocodigo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/teste")
	public String index() {
		System.out.println("Hello world!");
		return "hello-world";
	}
}
