package com.gruppo.entities;

import java.time.LocalTime;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="")
public class Sacco {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private int babboId;
	
	@Column(columnDefinition = "TIME")
	@DateTimeFormat(iso=ISO.TIME)
	LocalTime oraConsegna;
	
	@Column(columnDefinition = "TIME")
	@DateTimeFormat(iso = ISO.TIME)
	LocalTime oraAssegnazione;
	
	@ManyToOne
	@JoinColumn(name="babbo_id")
	BabboNatale babbonatale;

	
}
