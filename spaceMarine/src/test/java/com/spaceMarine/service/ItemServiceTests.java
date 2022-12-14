package com.spaceMarine.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spaceMarine.vo.ItemVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ItemServiceTests {

	@Autowired
	private ItemService mariadbSqlSession;

//	@Test
//	public void testGetList() {
//		Criteria cri = new Criteria();
//		mariadbSqlSession.getList(cri).forEach(list -> log.info(list));
//	}

	@Test
	public void testLvOne() {
		ItemVO itemVO = new ItemVO();
		String code = "000103";
		itemVO.setIMPA_CD(code);

//		CategoryVO categoryVO = mariadbSqlSession.lvOneCode(code);

	}

}
