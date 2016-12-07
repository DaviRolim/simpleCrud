package br.com.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
		return "redirect:/crud/read";

	}
	
	@RequestMapping("/read")
	public ModelAndView read() {
		ModelAndView modelAndView = new ModelAndView("crud/read");
		List<Usuario> usuarios = dao.read();
		modelAndView.addObject("usuarios", usuarios);
		return modelAndView;
	}
	
	@RequestMapping(method=RequestMethod.GET ,value="/update/{id}")
	public ModelAndView getUpdate(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("crud/update");
		Usuario usuario = dao.find(id);
		modelAndView.addObject("usuario", usuario);
		return modelAndView;
		
	}
	@RequestMapping(method=RequestMethod.POST ,value="/update/{id}")
	public String setUpdate(Usuario usuario) {
		Usuario user = new Usuario();
		user.setId(usuario.getId());
		user.setCelular(usuario.getCelular());
		user.setCpf(usuario.getCpf());
		user.setEmail(usuario.getEmail());
		user.setNome(usuario.getNome());
		dao.update(user);
		
		return "redirect:/crud/read";
		
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Integer id){
		dao.delete(id);
		return "redirect:/crud/read";
	}
	
	
	
	
	
	
	
	
	
	
	


}
