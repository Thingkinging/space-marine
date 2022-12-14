package com.spaceMarine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spaceMarine.dto.PageDTO;
import com.spaceMarine.service.CategoryService;
import com.spaceMarine.service.ItemService;
import com.spaceMarine.vo.Criteria;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
public class ItemController {

	@Autowired
	private ItemService service;

	@Autowired
	CategoryService categoryService;

	@GetMapping("/main")
	public void list(Criteria cri, Model model, String impa_cd) {
		log.info("main........." + cri);

		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));
//		model.addAttribute("category", categoryService.getList());
		model.addAttribute("side", service.big_cd());

		model.addAttribute("impa", service.read(impa_cd));

		Integer total = service.getTotalCount(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	@PostMapping("/codeInfo")
	public String codeInfo(@RequestParam("codeInfo") String impa_cd, Model model) {
		log.info("post codeInfo......." + impa_cd);
		model.addAttribute("list", service.read(impa_cd));
		return "/popup/codeInfo";
	}

	@GetMapping("/companyInfo")
	public String companyInfo() {
		log.info("get companyInfo.......");
		return "/popup/companyInfo";
	}

	@GetMapping("/homepageInfo")
	public String homepageInfo() {
		log.info("get homepageInfo.......");
		return "/popup/homepageInfo";
	}

	@GetMapping("/page1")
	public String sidePage() {
		log.info("get page1........");
		return "/sidePage/page1";
	}

//	@GetMapping("/side")
//	public void category(Model model, Criteria cri) {
//		log.info("category.......");
//
//		model.addAttribute("list", service.getList(cri));
//	}

//	@GetMapping
//	public void get(@RequestParam("code") String code, Model model) {
//		log.info("get");
//		model.addAttribute("code", service.productList(code));
//	}
}