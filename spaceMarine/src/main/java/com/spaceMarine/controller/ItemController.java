package com.spaceMarine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spaceMarine.dto.PageDTO;
import com.spaceMarine.service.CategoryService;
import com.spaceMarine.service.ItemService;
import com.spaceMarine.vo.CategoryVO;
import com.spaceMarine.vo.Criteria;
import com.spaceMarine.vo.ItemVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board/*")
public class ItemController {

	@Autowired
	private ItemService service;

	@Autowired
	CategoryService categoryService;

	@GetMapping("/main")
	public void list(Criteria cri, Model model, String impa_cd, ItemVO itemVO, CategoryVO lv) {
		log.info("main........." + cri);

		model.addAttribute("list", service.getList(cri));
		model.addAttribute("side", categoryService.getList_LVL_CD());
		model.addAttribute("side2", categoryService.getList_H_LVL_CD());
		model.addAttribute("side3", categoryService.getList_LVL_CD_CD());

		Integer total = service.getTotalCount(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}

	@PostMapping("/codeInfo")
	public String codeInfo(@ModelAttribute("codeInfo") String impa_cd, Model model, ItemVO itemVO) {
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

	@GetMapping("/lvOne")
	public String lvOne(@ModelAttribute("value") String categoryVO, Model model, Criteria cri,
			@ModelAttribute("value") ItemVO item) {
		log.info("lvOne............" + categoryVO);
//		model.addAttribute("list", service.getList(cri));
		model.addAttribute("list", service.lvItem(item));
		model.addAttribute("lvOne", categoryService.lvTwoItem(categoryVO));

		return "/sidePage/lvOne";
	}

}
