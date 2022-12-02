package com.spaceMarine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spaceMarine.mapper.ProductMapper;
import com.spaceMarine.vo.Criteria;
import com.spaceMarine.vo.ProductVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper mapper;

	@Override
	public List<ProductVO> getList(Criteria cri) {
		log.info("getList with criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public ProductVO get(String code) {
		log.info("code..........." + code);
		return mapper.read(code);
	}

	@Override
	public Integer getTotalCount(Criteria cri) {
		log.info("get total count.......");
		return mapper.getTotalCount(cri);
	}

}
