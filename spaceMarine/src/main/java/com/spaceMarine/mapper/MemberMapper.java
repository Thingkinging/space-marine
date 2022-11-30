package com.spaceMarine.mapper;

import java.util.List;

import com.spaceMarine.vo.MemberVO;

public interface MemberMapper {

	// C
	public void insert(MemberVO memberVO);

	// R
	public MemberVO read(MemberVO memberVO);

	public List<MemberVO> getList();

	// U
	public String update(MemberVO memberVO);

	// D
	public String delete(String co_cd);
}
