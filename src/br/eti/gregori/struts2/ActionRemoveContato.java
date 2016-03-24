package br.eti.gregori.struts2;

import java.util.List;

//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import java.util.Date;

import br.eti.gregori.jdbc.dao.ContatoDao;
import br.eti.gregori.jdbc.modelo.Contato;

public class ActionRemoveContato {
	private String id;
	private String mensagem;
	private List<Contato> contatos;
	
	public List<Contato> getContatos() {
		return contatos;
	}
	
	public String getMensagem() {
		return mensagem;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String execute() throws Exception {		
		ContatoDao dao = new ContatoDao();

		if (id != null) {
			Long lId = Long.parseLong(id);
			Contato contato = new Contato();
			contato.setId(lId);
			dao.remove(contato);
			mensagem = "Contato removido com sucesso.";
		} else {
			mensagem = "Erro ao remover contato. ID não pode ser nulo.";
		}
		
		contatos = dao.getLista();
				
		return "success";
	}
	
}
