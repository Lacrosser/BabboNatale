package com.gruppo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gruppo.entities.BabboNatale;
import com.gruppo.entities.Bambino;
import com.gruppo.entities.Dono;
import com.gruppo.entities.DonoBambino;
import com.gruppo.entities.Sacco;
import com.gruppo.entities.SaccoDono;
import com.gruppo.repo.BabboNataleRepo;
import com.gruppo.repo.BambinoRepo;
import com.gruppo.repo.DonoBambinoRepo;
import com.gruppo.repo.DonoRepo;
import com.gruppo.repo.SaccoDonoRepo;
import com.gruppo.repo.SaccoRepo;

@RestController
@RequestMapping("api")
public class Rest {

	@Autowired
	BabboNataleRepo babborepo;

	@Autowired
	BambinoRepo bambrepo;

	@Autowired
	DonoBambinoRepo donoBambrepo;

	@Autowired
	DonoRepo donorepo;

	@Autowired
	SaccoDonoRepo saccoDonorepo;

	@Autowired
	SaccoRepo saccorepo;

	@GetMapping(path = { "babbi", "babbi/{id}" })
	@CrossOrigin
	public List<BabboNatale> getBabbi(@PathVariable(required = false) Integer id) {

		if (id == null) {
			return babborepo.findAll();

		} else {
			if (id <= babborepo.findAll().size()) {

				return List.of(babborepo.findById(id).get());
			} else {
				return null;
			}

		}

	}

	@PostMapping(path = "babbi")
	public BabboNatale addBabbo(@RequestBody BabboNatale b) {

		return babborepo.save(b);
	}

	@GetMapping(path = { "bambini", "bambini/{id}" })
	@CrossOrigin
	public List<Bambino> getBambino(@PathVariable(required = false) Integer id) {

		if (id == null) {

			return bambrepo.findAll();

		} else {
			if (id <= bambrepo.findAll().size()) {

				return List.of(bambrepo.findById(id).get());
			} else {
				return null;
			}

		}
	}

	@PostMapping(path = "bambini")
	public Bambino addBambino(@RequestBody Bambino b) {

		return bambrepo.save(b);
	}

	@GetMapping(path = { "dono", "dono/{id}" })
	@CrossOrigin
	public List<Dono> getDono(@PathVariable(required = false) Integer id) {
		if (id == null) {

			return donorepo.findAll();

		} else {
			if (id <= donorepo.findAll().size()) {

				return List.of(donorepo.findById(id).get());
			} else {
				return null;
			}
		}
	}

	@PostMapping(path = "doni")
	public Dono addDono(@RequestBody Dono b) {

		return donorepo.save(b);
	}

	@GetMapping(path = { "donibambini", "donibambini/{id}" })
	@CrossOrigin
	public List<DonoBambino> getDonoBambino(@PathVariable(required = false) Integer id) {
		if (id == null) {

			return donoBambrepo.findAll();

		} else {
			if (id <= donoBambrepo.findAll().size()) {

				return List.of(donoBambrepo.findById(id).get());
			} else {
				return null;
			}
		}
	}

	@PostMapping(path = "donibambini")
	public DonoBambino addDonoBambino(@RequestBody DonoBambino b) {

		return donoBambrepo.save(b);
	}

	@GetMapping(path = { "sacchi", "sacchi/{id}" })
	@CrossOrigin
	public List<Sacco> getSacco(@PathVariable(required = false) Integer id) {
		if (id == null) {

			return saccorepo.findAll();

		} else {
			if (id <= saccorepo.findAll().size()) {

				return List.of(saccorepo.findById(id).get());
			} else {
				return null;
			}
		}
	}

	@PostMapping(path = "sacchi")
	public Sacco addSacco(@RequestBody Sacco b) {

		return saccorepo.save(b);
	}

	@GetMapping(path = { "sacchidoni", "sacchidoni/{id}" })
	@CrossOrigin
	public List<SaccoDono> getSaccoDono(@PathVariable(required = false) Integer id) {
		if (id == null) {

			return saccoDonorepo.findAll();

		} else {
			if (id <= saccoDonorepo.findAll().size()) {

				return List.of(saccoDonorepo.findById(id).get());
			} else {
				return null;
			}
		}
	}

	@PostMapping(path = "sacchidoni")
	public SaccoDono addSaccoDono(@RequestBody SaccoDono b) {

		return saccoDonorepo.save(b);
	}

}
