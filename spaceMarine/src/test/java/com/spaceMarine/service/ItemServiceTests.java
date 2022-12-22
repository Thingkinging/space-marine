package com.spaceMarine.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spaceMarine.vo.Criteria;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ItemServiceTests {

	@Autowired
	@Qualifier("sqlSessionFactory")
	private ItemService service;

	@Test
	public void testGetList() {
		Criteria cri = new Criteria();
		service.getList(cri).forEach(list -> log.info(list));
	}

}
