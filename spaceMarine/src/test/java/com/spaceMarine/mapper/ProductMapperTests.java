package com.spaceMarine.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spaceMarine.vo.Criteria;
import com.spaceMarine.vo.ProductVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProductMapperTests {

	@Autowired
	private ProductMapper mapper;

	@Test
	public void testGetList() {
		log.info(mapper);
	}

	@Test
	public void testPaging() {
		Criteria cri = new Criteria();

		cri.setPageNum(3);
		cri.setAmount(10);

		List<ProductVO> list = mapper.getListWithPaging(cri);

		list.forEach(page -> log.info(page));
	}

}
