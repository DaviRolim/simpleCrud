package br.com.crud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import br.com.crud.model.Usuario;

@Repository
@Transactional
public class UsuarioDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void create(Usuario usuario) {
		manager.persist(usuario);
	}
	
	public List<Usuario> read() {
		return manager.createQuery("select u from Usuario u", Usuario.class).getResultList();
	}
	
	public void update(Usuario usuario) {
		manager.merge(usuario);
	}
	
	public void delete(Integer id) {
		Usuario usuario = manager.find(Usuario.class, id);
		manager.remove(usuario);
	}
	
	public Usuario find(Integer id) {
		return manager.find(Usuario.class, id);
//		return manager.createQuery("select distinct(u) from Usuario u where u.id=:id", Usuario.class).setParameter("id", id).getSingleResult();
	}
	
	
	
	
	
	
	
	
	
	
	
	


}
