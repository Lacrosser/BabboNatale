package com.gruppo.entities;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name= "dono_bambino")
public class DonoBambino {
	
	@Id
	private int id;
	
	@ManyToOne
    @JoinColumn(name = "dono_id")
	private Dono dono;

    @ManyToOne
    @JoinColumn(name = "bambino_id")
    private Bambino bambino;
    
    
    private LocalDateTime ora;
    
    private String statoConsegna;

 
    
	public DonoBambino() {
		super();
	}


	public DonoBambino(int id, Dono dono, Bambino bambino, LocalDateTime ora, String statoConsegna) {
		super();
		this.id = id;
		this.dono = dono;
		this.bambino = bambino;
		this.ora = ora;
		this.statoConsegna = statoConsegna;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Dono getDono() {
		return dono;
	}


	public void setDono(Dono dono) {
		this.dono = dono;
	}


	public Bambino getBambino() {
		return bambino;
	}


	public void setBambino(Bambino bambino) {
		this.bambino = bambino;
	}


	public LocalDateTime getOra() {
		return ora;
	}


	public void setOra(LocalDateTime ora) {
		this.ora = ora;
	}


	public String getStatoConsegna() {
		return statoConsegna;
	}


	public void setStatoConsegna(String statoConsegna) {
		this.statoConsegna = statoConsegna;
	}
    
	
	
}
