package com.cl.pokebook.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cl.pokebook.models.Expense;

@Repository
public interface PokeBookRepo extends CrudRepository<Expense, Long> {
	
	List<Expense> findAll();
	
	Optional<Expense> findById(Long id);
}
