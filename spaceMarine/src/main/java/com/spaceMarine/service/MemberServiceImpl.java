package com.spaceMarine.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spaceMarine.mapper.MemberMapper;
import com.spaceMarine.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	@Resource(name = "mariadb-sqlSession")
	private MemberMapper mapper;

	@Override
	public void register(MemberVO memberVO) {
		log.info("register....." + memberVO);
		mapper.insert(memberVO);
	}

	@Override
	public MemberVO get(MemberVO memberVO) {
		log.info("co_cd..........." + memberVO);
		return mapper.read(memberVO);
	}

	@Override
	public List<MemberVO> getList() {
		log.info("getList.................");
		return mapper.getList();
	}

}
