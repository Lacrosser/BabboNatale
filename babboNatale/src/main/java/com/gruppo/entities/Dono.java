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
@Table(name="dono")
public class Dono {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String nome;
	
	private int disponibilita;
	
	@OneToMany(mappedBy = "dono", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Set<SaccoDono> donisacchi;
	
	public Dono() {
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

	public int getDisponibilita() {
		return disponibilita;
	}

	public void setDisponibilita(int disponibilita) {
		this.disponibilita = disponibilita;
	}

	public Set<SaccoDono> getDonisacchi() {
		return donisacchi;
	}

	public void setDonisacchi(Set<SaccoDono> donisacchi) {
		this.donisacchi = donisacchi;
	}
	

}
