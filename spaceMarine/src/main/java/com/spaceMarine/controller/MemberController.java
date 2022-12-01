package com.spaceMarine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spaceMarine.service.MemberService;
import com.spaceMarine.service.ProductService;
import com.spaceMarine.vo.MemberVO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController {

	@Autowired
	private MemberService service;

	@Autowired
	private ProductService productService;

	@GetMapping("/register")
	public void register() {
		log.info("register..............");
	}

	@PostMapping("/register")
	public String register(MemberVO memberVO) {

		service.register(memberVO);
		log.info("register....." + memberVO);

		return "redirect:/";
	}

	@GetMapping("/login")
	public void login() {
		log.info("login......");
	}

	@PostMapping(value = "/login")
	public String login(@ModelAttribute("id") MemberVO memberVO, Model model) {

		memberVO = service.get(memberVO);

		model.addAttribute("member", memberVO);
		log.info("login......" + memberVO.getId() + "\t" + memberVO.getPwd());

		if (memberVO.getId() == null || memberVO.getPwd() == null) {
			return "redirect:/";
		} else {
			model.addAttribute("list", productService.getList());
			return "board/main";
		}
	}
}
