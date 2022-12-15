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
@Table(name = "babbonatale")
public class BabboNatale {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String nome;
	private String cognome;
	private String mezzo;
	private String zona;
	
	
	@OneToMany(mappedBy = "babbo", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Set<Sacco> sacco;

	public BabboNatale() {
		// TODO Auto-generated constructor stub
	}

	
	public BabboNatale(String nome, String cognome, String mezzo, String zona, Set<Sacco> sacco) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.mezzo = mezzo;
		this.zona = zona;
		this.sacco = sacco;
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
	
	
	public Set<Sacco> getSacco() {
		return sacco;
	}

	public void setSacco(Set<Sacco> sacco) {
		this.sacco = sacco;
	}

}
