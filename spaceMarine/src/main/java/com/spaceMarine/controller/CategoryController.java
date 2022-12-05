package com.spaceMarine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spaceMarine.service.CategoryService;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/category/*")
@AllArgsConstructor
public class CategoryController {

	@Autowired
	private CategoryService service;

	@GetMapping("/")
	public void list(Model model) {
		log.info("category.......");

		model.addAttribute("list", service.getList());
	}

}
