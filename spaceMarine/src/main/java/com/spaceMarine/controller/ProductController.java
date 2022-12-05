package com.spaceMarine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spaceMarine.dto.PageDTO;
import com.spaceMarine.service.CategoryService;
import com.spaceMarine.service.MemberService;
import com.spaceMarine.service.ProductService;
import com.spaceMarine.vo.Criteria;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
public class ProductController {

	@Autowired
	private ProductService service;

	@Autowired
	private MemberService memberService;

	@Autowired
	CategoryService categoryService;

	@GetMapping("/main")
	public void list(Criteria cri, Model model) {
		log.info("main........." + cri);

		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));
		model.addAttribute("category", categoryService.getList());

		Integer total = service.getTotalCount(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	@GetMapping("/codeInfo")
	public String pop() {
		log.info("get codeInfo.......");
		return "/popup/codeInfo";
	}

	@GetMapping("/priceInfo")
	public String priceInfo(String price, Model model) {
		log.info("get priceInfo.......");
		model.addAttribute("list", service.getPrice(price));
		return "/popup/priceInfo";

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

//	@GetMapping
//	public void get(@RequestParam("code") String code, Model model) {
//		log.info("get");
//		model.addAttribute("code", service.productList(code));
//	}
}
