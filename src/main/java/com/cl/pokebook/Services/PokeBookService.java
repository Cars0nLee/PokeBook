package com.cl.pokebook.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.cl.pokebook.models.Expense;
import com.cl.pokebook.repositories.PokeBookRepo;

@Service
public class PokeBookService {
	
	private final PokeBookRepo repo;
	
	public PokeBookService(PokeBookRepo repo) {
		this.repo = repo;
	}
	
	public List<Expense> allExpenses() {
		return repo.findAll();
	}
	
	public Expense create(Expense expense) {
		return repo.save(expense);
	}
	
	public Expense findExpense(Long id) {
		Optional <Expense> optional = repo.findById(id);
		if(optional.isPresent()) {
			return optional.get();
		}
		else {
			return null;
		}
	}
	
}

