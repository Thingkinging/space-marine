package com.spaceMarine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spaceMarine.dto.PageDTO;
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

	@GetMapping("/main")
	public void list(Criteria cri, Model model) {
		log.info("main........." + cri);

		model.addAttribute("list", service.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, 123));

		Integer total = service.getTotalCount(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	@GetMapping("/popup")
	public String pop() {
		log.info("codeInfo.......");
		return "/popup/codeInfo";
	}

	@GetMapping("/info")
	public String info() {
		log.info("priceInfo.......");
		return "/popup/priceInfo";
	}

	@GetMapping("/companyInfo")
	public String companyInfo() {
		log.info("companyInfo.......");
		return "/popup/companyInfo";
	}

	@GetMapping("/homepageInfo")
	public String homepageInfo() {
		log.info("homepageInfo.......");
		return "/popup/homepageInfo";
	}

	@GetMapping("/page1")
	public String sidePage() {
		log.info("page1........");
		return "/sidePage/page1";
	}

//	@GetMapping
//	public void get(@RequestParam("code") String code, Model model) {
//		log.info("get");
//		model.addAttribute("code", service.productList(code));
//	}
}
