package com.spaceMarine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spaceMarine.service.MemberService;
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

	@GetMapping("/register")
	public void register() {

	}

	@PostMapping("/register")
	public String register(MemberVO memberVO, RedirectAttributes rttr) {
		log.info("register....." + memberVO);

		service.register(memberVO);
		rttr.addFlashAttribute("result", memberVO.getCo_cd());
		System.out.println("<script>");
		System.out.println("alert('회원가입 완료')");
		System.out.println("</script>");
		return "redirect:/";
	}

	@PostMapping("/login")
	public String login(MemberVO memberVO, Model model) {

		memberVO = service.get(memberVO);

		model.addAttribute("member", memberVO);
		System.out.println(memberVO);

		if (memberVO.getCo_cd() == null || memberVO.getCo_nm() == null) {
			return "redirect:/";
		} else {
			return "redirect:/board/main";
		}

	}
}
