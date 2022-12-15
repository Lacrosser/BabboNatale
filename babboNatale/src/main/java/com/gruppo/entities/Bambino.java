package com.gruppo.entities;

import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "bambino")
public class Bambino {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String nome;
	
	private String cognome;
	
	private String indirizzo;
	
	

	@OneToMany(mappedBy = "bambino", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Set<DonoBambino> bambinoDono;

	public Bambino() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Set<DonoBambino> getBambinoDono() {
		return bambinoDono;
	}

	public void setBambinoDono(Set<DonoBambino> bambinoDono) {
		this.bambinoDono = bambinoDono;
	}

	
}	