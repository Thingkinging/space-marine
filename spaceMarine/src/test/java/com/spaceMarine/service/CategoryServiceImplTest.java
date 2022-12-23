package com.spaceMarine.service;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CategoryServiceImplTest {

	@Autowired
	@Resource(name = "mariadb-sqlSession")
	CategoryService service;

	@Test
	public void test() {
	}

	@Test
	public void testCategory() {
		service.getList_LVL_CD().forEach(i -> log.info(i));

	}

	@Test
	public void testCategory1() {

		service.getList_H_LVL_CD().forEach(i -> log.info(i));

	}

}
