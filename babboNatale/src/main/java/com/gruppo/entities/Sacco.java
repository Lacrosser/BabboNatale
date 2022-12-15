package com.gruppo.entities;

import java.time.LocalTime;
import java.util.Set;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "sacco")
public class Sacco {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(columnDefinition = "TIME")
	@DateTimeFormat(iso = ISO.TIME)
	LocalTime oraConsegna;

	@Column(columnDefinition = "TIME")
	@DateTimeFormat(iso = ISO.TIME)
	LocalTime oraAssegnazione;
	
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "babbo_id")
	private BabboNatale babbo;
	
	@OneToMany(mappedBy = "sacco", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Set<SaccoDono> sacchidono;
	
	

	public Sacco() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalTime getOraConsegna() {
		return oraConsegna;
	}

	public void setOraConsegna(LocalTime oraConsegna) {
		this.oraConsegna = oraConsegna;
	}

	public LocalTime getOraAssegnazione() {
		return oraAssegnazione;
	}

	public void setOraAssegnazione(LocalTime oraAssegnazione) {
		this.oraAssegnazione = oraAssegnazione;
	}
	@JsonIgnore
	public BabboNatale getBabbo() {
		return babbo;
	}

	public void setBabbo(BabboNatale babbo) {
		this.babbo = babbo;
	}

	public Set<SaccoDono> getSacchidono() {
		return sacchidono;
	}

	public void setSacchidono(Set<SaccoDono> sacchidono) {
		this.sacchidono = sacchidono;
	}
	

}
