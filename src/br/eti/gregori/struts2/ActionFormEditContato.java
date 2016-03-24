package br.eti.gregori.struts2;

import br.eti.gregori.jdbc.dao.ContatoDao;
import br.eti.gregori.jdbc.modelo.Contato;

public class ActionFormEditContato {
	private Contato contato;
	private String id;
	
	public Contato getContato() {
		return contato;
	}
	
	public void setContato(Contato contato) {
		this.contato = contato;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String execute() throws Exception {
		
		if (id != null) {
			long lId = Long.parseLong(id);
			ContatoDao dao = new ContatoDao();
			contato = dao.getContato(lId);
		}
				
		return "success";
	}
	
}
