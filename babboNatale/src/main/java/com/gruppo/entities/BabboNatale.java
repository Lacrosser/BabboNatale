package com.gruppo.entities;

import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "babbo")
public class BabboNatale {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String nome;
	private String cognome;
	private String mezzo;
	private String zona;

	@OneToMany(mappedBy = "sacco")
	private Set<Sacco> sacchi;

	

	public BabboNatale() {
		// TODO Auto-generated constructor stub
	}

	

	public BabboNatale(int id, String nome, String cognome, String mezzo, String zona, Set<Sacco> sacchi) {
		super();
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.mezzo = mezzo;
		this.zona = zona;
		this.sacchi = sacchi;
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

	

	public String getMezzo() {
		return mezzo;
	}

	public void setMezzo(String mezzo) {
		this.mezzo = mezzo;
	}

	public String getZona() {
		return zona;
	}

	public void setZona(String zona) {
		this.zona = zona;
	}

	public Set<Sacco> getSacchi() {
		return sacchi;
	}

	public void setSacchi(Set<Sacco> sacchi) {
		this.sacchi = sacchi;
	}

}
