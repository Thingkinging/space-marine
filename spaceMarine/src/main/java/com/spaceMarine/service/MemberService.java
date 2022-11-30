package com.spaceMarine.service;

import java.util.List;

import com.spaceMarine.vo.MemberVO;

public interface MemberService {

	public void register(MemberVO memberVO);

	public MemberVO get(MemberVO memberVO);

	public List<MemberVO> getList();
}
