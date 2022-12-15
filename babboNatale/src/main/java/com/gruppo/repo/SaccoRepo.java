package com.gruppo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gruppo.entities.Sacco;

public interface SaccoRepo extends JpaRepository<Sacco, Integer> {

}
