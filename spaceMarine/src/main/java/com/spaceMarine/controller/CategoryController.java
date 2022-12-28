package com.spaceMarine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spaceMarine.service.CategoryService;
import com.spaceMarine.vo.CategoryVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/category/*")
@AllArgsConstructor
public class CategoryController {

	@Autowired
	private CategoryService service;

	@GetMapping("/lvOne")
	public String lvOne(@ModelAttribute("lvOne") CategoryVO categoryVO, Model model) {
		log.info("lvOne............");

		model.addAttribute("lvOne", service.lvOneCode(categoryVO));
//		model.addAttribute("lvOne", service.lvTwoItem(categoryVO));
		return "/sidePage/lvOne";
	}

}
