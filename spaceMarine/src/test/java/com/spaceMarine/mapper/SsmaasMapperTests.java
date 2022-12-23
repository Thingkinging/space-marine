package com.spaceMarine.mapper;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "../../../database.xml")
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SsmaasMapperTests {

	@Autowired
	@Resource(name = "mssql-sqlSession")
	private SsmaasMapper mapper;

	@Autowired
	@Resource(name = "mariadb-sqlSession")
	private CategoryMapper categoryMapper;

	@Test
	public void testGetList_Sa_Category_Name() {
		log.info(this.mapper.getList_Sa_Category_Name());
	}

	@Test
	public void testCategoty_List() {
		log.info(categoryMapper.getList_H_LVL_CD());
	}

}
