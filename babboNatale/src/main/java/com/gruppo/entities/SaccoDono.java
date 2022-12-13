package com.gruppo.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "sacco_dono")
public class SaccoDono {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	@JoinColumn(name = "sacco_id")
	private Sacco sacco;

	@ManyToOne
	@JoinColumn(name = "dono_id")
	private Dono dono;
	
	
	public SaccoDono() {
		// TODO Auto-generated constructor stub
	}
	

	public SaccoDono(int id, Sacco sacco, Dono dono) {
		super();
		this.id = id;
		this.sacco = sacco;
		this.dono = dono;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Sacco getSacco() {
		return sacco;
	}

	public void setSacco(Sacco sacco) {
		this.sacco = sacco;
	}

	public Dono getDono() {
		return dono;
	}

	public void setDono(Dono dono) {
		this.dono = dono;
	}

}
