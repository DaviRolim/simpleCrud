package br.com.crud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/crud")
public class CrudController {

	@RequestMapping("/create")
	public ModelAndView create() {
		new ModelAndView()
	}

}
