package com.gruppo.entities;

import java.time.LocalTime;
import java.util.Set;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
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
	private LocalTime oraAssegnazione;

	@ManyToOne
	@JoinColumn(name = "babbo_id")
	private BabboNatale babbonatale;

	@OneToMany(mappedBy = "sacco")
	private Set<SaccoDono> sacchiDoni;

	public Sacco(int id, LocalTime oraConsegna, LocalTime oraAssegnazione, BabboNatale babbonatale,
			Set<SaccoDono> sacchiDoni) {
		super();
		this.id = id;
		this.oraConsegna = oraConsegna;
		this.oraAssegnazione = oraAssegnazione;
		this.babbonatale = babbonatale;
		this.sacchiDoni = sacchiDoni;
	}

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

	public BabboNatale getBabbonatale() {
		return babbonatale;
	}

	public void setBabbonatale(BabboNatale babbonatale) {
		this.babbonatale = babbonatale;
	}

	public Set<SaccoDono> getSacchiDoni() {
		return sacchiDoni;
	}

	public void setSacchiDoni(Set<SaccoDono> sacchiDoni) {
		this.sacchiDoni = sacchiDoni;
	}

}
