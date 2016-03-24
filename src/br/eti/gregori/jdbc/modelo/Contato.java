package br.eti.gregori.jdbc.modelo;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.text.ParseException;

public class Contato {
	private Long id;
	private String nome;
	private String email;
	private String endereco;
	private Calendar dataNascimento;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public Calendar getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public void setDataNascimento(String dataNascimento) {
		try {
			Date data = new SimpleDateFormat("dd/MM/yyyy")
					.parse(dataNascimento);
			this.dataNascimento = Calendar.getInstance();
			this.dataNascimento.setTime(data);
		} catch (ParseException e) {
			throw new RuntimeException("Erro de conversão da data.", e);
		}
	}
}
