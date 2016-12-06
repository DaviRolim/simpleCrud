package br.com.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.crud.dao.UsuarioDAO;
import br.com.crud.model.Usuario;

@Controller
@RequestMapping("/crud")
public class CrudController {
	
	@Autowired
	private UsuarioDAO dao;

	@RequestMapping(method=RequestMethod.GET ,value="/create")
	public ModelAndView getCreate() {
		ModelAndView modelAndView = new ModelAndView("crud/create");
		modelAndView.addObject("cadastrar", "Cadastre-se");
		return modelAndView;

	}
	@RequestMapping(method=RequestMethod.POST ,value="/create")
	public String postCreate(Usuario usuario, RedirectAttributes redirectAttributes) {
		dao.create(usuario);
		redirectAttributes.addFlashAttribute("sucesso", "Cadastrado com sucesso");
		return "redirect:/crud/read";

	}
	
	@RequestMapping("/read")
	public ModelAndView read() {
		ModelAndView modelAndView = new ModelAndView("crud/read");
		List<Usuario> usuarios = dao.read();
		modelAndView.addObject("usuarios", usuarios);
		return modelAndView;
	}
	
	
	
	
	
	
	
	
	
	
	


}
