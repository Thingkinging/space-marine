package com.spaceMarine.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProductServiceTests {

	@Autowired
	private ProductService service;

	@Test
	public void testGetList() {
		service.getList().forEach(list -> log.info(list));
	}

	@Test
	public void testOneList() {
		log.info(service.get("1"));
	}
}
