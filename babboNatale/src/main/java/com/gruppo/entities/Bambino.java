package com.gruppo.entities;

import java.util.Set;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

public class Bambino {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@OneToMany(mappedBy="bambino")
	private Set<DonoBambino> donoAlBambino;
	
	private String nome;
	private String cognome;
	private String indirizzo;
	
	
	public Bambino() {
		super();
	}
	
	public Bambino(int id, Set<DonoBambino> donoAlBambino, String nome, String cognome, String indirizzo) {
		super();
		this.id = id;
		this.donoAlBambino = donoAlBambino;
		this.nome = nome;
		this.cognome = cognome;
		this.indirizzo = indirizzo;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Set<DonoBambino> getDonoAlBambino() {
		return donoAlBambino;
	}
	public void setDonoAlBambino(Set<DonoBambino> donoAlBambino) {
		this.donoAlBambino = donoAlBambino;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	
	
}
