package br.eti.gregori.struts2;

import java.util.List;

import br.eti.gregori.jdbc.dao.ContatoDao;
import br.eti.gregori.jdbc.modelo.Contato;

public class ActionListaContatos {
	private List<Contato> contatos;
	
	public List<Contato> getContatos() {
		return contatos;
	}
	
	public String execute() throws Exception {
		
		ContatoDao dao = new ContatoDao();
		contatos = dao.getLista();
		
		return "success";
	}
	
}
