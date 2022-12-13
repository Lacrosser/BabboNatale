	package com.gruppo.entities;


	import java.util.Set;

import jakarta.persistence.Entity;

	import jakarta.persistence.GeneratedValue;
	import jakarta.persistence.GenerationType;
	import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;


	@Entity
	public class Dono {
		
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		
		@OneToMany(mappedBy="dono")
		private Set<SaccoDono> sacchiDoni;
		
		@OneToMany(mappedBy="dono")
		private Set<DonoBambino> donoAlBambino;
		
		private String nome;
		private int Disponibilita;
		
		public Dono() {
			super();
		}

		public Dono(int id, Set<DonoBambino> donoAlBambino, String nome, int disponibilita) {
			super();
			this.id = id;
			this.donoAlBambino = donoAlBambino;
			this.nome = nome;
			Disponibilita = disponibilita;
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
			return Disponibilita;
		}
		public void setDisponibilita(int disponibilita) {
			Disponibilita = disponibilita;
		}
		
}


