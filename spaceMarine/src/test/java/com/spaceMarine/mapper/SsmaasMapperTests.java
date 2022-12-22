package com.spaceMarine.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "../../../database.xml")
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SsmaasMapperTests {

	@Autowired
	@Qualifier("sqlSessionFactory2")
	private SsmaasMapper mapper;

	@Test
	public void testGetList_Sa_Category_Name() {
		log.info(mapper.getList_Sa_Category_Name());
	}

}
