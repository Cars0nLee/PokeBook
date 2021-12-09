package com.cl.pokebook.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cl.pokebook.Services.PokeBookService;
import com.cl.pokebook.models.Expense;

@Controller
public class PokeBookController {
	
	private final PokeBookService pokeServ;
	
	public PokeBookController(PokeBookService pokeServ) {
		this.pokeServ = pokeServ;
	}
	
	///// Create routes
	@RequestMapping("/")
	public String newExpense(@ModelAttribute("expense") Expense expense, Model model) {
		List<Expense> expenses = pokeServ.allExpenses();
		model.addAttribute("expenses", expenses);
		return "index.jsp";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Expense> expenses = pokeServ.allExpenses();
			model.addAttribute("expenses", expenses);
			return "index.jsp";
		}
		else {
			pokeServ.create(expense);
			return "redirect:/";
		}
	}
	
	///// Edit routes
	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Expense expense = pokeServ.findExpense(id);
		model.addAttribute("expense", expense);
		return "edit.jsp";
	}
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.PUT)
	public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Expense> expenses = pokeServ.allExpenses();
			model.addAttribute("expenses", expenses);
			return "edit.jsp";
		}
		else {
			pokeServ.create(expense);
			return "redirect:/";
		}
	}
}

