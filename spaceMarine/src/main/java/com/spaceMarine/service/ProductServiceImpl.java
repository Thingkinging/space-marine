package com.spaceMarine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spaceMarine.mapper.ProductMapper;
import com.spaceMarine.vo.ProductVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper mapper;

	@Override
	public List<ProductVO> getList() {
		log.info("getList...........");
		return mapper.getList();
	}

	@Override
	public ProductVO get(String code) {
		log.info("code..........." + code);
		return mapper.read(code);
	}

}
