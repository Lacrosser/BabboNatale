package com.gruppo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gruppo.entities.Bambino;

public interface BambinoRepo extends JpaRepository<Bambino, Integer> {

}
