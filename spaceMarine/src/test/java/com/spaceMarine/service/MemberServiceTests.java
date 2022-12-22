package com.spaceMarine.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spaceMarine.vo.MemberVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberServiceTests {

	@Autowired
	@Qualifier("sqlSessionFactory")
	private MemberService service;

	@Test
	public void testRegister() {
		MemberVO memberVO = new MemberVO();
		memberVO.setCo_cd("1111");
		memberVO.setCo_nm("삼성주식회사");
		memberVO.setCo_no("이것은 테스트");
		memberVO.setCo_gbn("이것도 테스트");
		memberVO.setBiz_no("처음부터");

		service.register(memberVO);

		log.info(memberVO);
	}

}
