package com.spaceMarine.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spaceMarine.dto.SsmaasDTO;
import com.spaceMarine.mapper2.SsmaasMapper;
import com.spaceMarine.vo.CategoryVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "../../../database.xml")
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SsmaasMapperTests {

	@Autowired
	private SsmaasMapper mssqlSqlSession;

	@Autowired
	private CategoryMapper mariadbSqlSession;

	@Test
	public void testGetList_Sa_Category_Name() {
		log.info(this.mssqlSqlSession.getList_Sa_Category_Name().get(1));
	}

	@Test
	public void testCategoty_List() {
		log.info(mariadbSqlSession.getList_H_LVL_CD().get(1));
	}

	@Test
	public void testJoinList() {

		CategoryVO categoryVO = new CategoryVO();
		SsmaasDTO ssmaasDTO = new SsmaasDTO();
		ssmaasDTO = mssqlSqlSession.getList_Sa_Category_Name().get(1);
		categoryVO = mariadbSqlSession.getList_H_LVL_CD().get(1);

		int cd = categoryVO.getLVL_CD().hashCode();
		int nm = ssmaasDTO.getName().substring(0, 2).hashCode();
		if (cd == nm) {
			int code = ssmaasDTO.getCateCode();
			log.info("code: " + code);
			log.info("cd: " + cd);
			log.info("nm: " + nm);
		} else {
			int code = ssmaasDTO.getCateCode();
			log.info("code?: " + code);
			log.info("cd: " + cd);
			log.info("nm: " + nm);
		}

	}

}
