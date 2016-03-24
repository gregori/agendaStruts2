package br.eti.gregori.struts2;

import java.util.List;

//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import java.util.Date;

import br.eti.gregori.jdbc.dao.ContatoDao;
import br.eti.gregori.jdbc.modelo.Contato;

public class ActionCreateEditContato {
	private Contato contato;
	private String id;
	private String mensagem;
	private List<Contato> contatos;
	
	public List<Contato> getContatos() {
		return contatos;
	}
	
	public String getMensagem() {
		return mensagem;
	}
	
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
/*		contato = new Contato();
		contato.setNome(request.getParameter("nome"));
		contato.setEmail(request.getParameter("email"));
		contato.setEndereco(request.getParameter("endereco"));
		Calendar dataNascimento = null;
		
		try {
			Date data = new SimpleDateFormat("dd/MM/yyyy")
					.parse(request.getParameter("dataNascimento"));
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(data);
		} catch (ParseException e) {
			throw new RuntimeException("Erro de conversão da data.", e);
		}
		
		contato.setDataNascimento(dataNascimento); */
		
		ContatoDao dao = new ContatoDao();
		
		
		if (id != null) {
			Long lId = Long.parseLong(id);
			contato.setId(lId);
			dao.altera(contato);
			
			mensagem = "Contato alterado com sucesso.";
			
		} else {
			dao.adiciona(contato);
			mensagem = "Contato criado com sucesso";
		}
		
		contatos = dao.getLista();
				
		return "success";
	}
	
}
