package com.spaceMarine.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spaceMarine.vo.CategoryVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CategoryServiceImplTest {

	@Autowired
	CategoryService mariadbSqlSession;

//	@Test
//	public void test() {
//	}
//
//	@Test
//	public void testCategory() {
//		mariadbSqlSession.getList_LVL_CD().forEach(i -> log.info(i));
//
//	}
//
//	@Test
//	public void testCategory1() {
//
//		mariadbSqlSession.getList_H_LVL_CD().forEach(i -> log.info(i));
//	}

//	@Test
//	public void testLvOne() {
//		CategoryVO categoryVO = new CategoryVO();
//		String code = "00";
//		categoryVO.setLVL_CD(code);
//
//		CategoryVO test = mariadbSqlSession.lvOneCode(categoryVO);
//
//
//		log.info("value : " + test);
//	}

	@Test
	public void testTow() {
		String test = "99061";
		CategoryVO vo = new CategoryVO();
		vo.setH_LVL_CD(test);
		List<CategoryVO> list = new ArrayList<CategoryVO>();
		Set<CategoryVO> set = new HashSet<CategoryVO>(list);
		List<CategoryVO> newList = new ArrayList<CategoryVO>(set);

		newList = mariadbSqlSession.lvTwoItem(test);
		newList.subList(2, 3);

		log.info("value : " + newList);

		newList.forEach(i -> log.info(i));

	}

}
