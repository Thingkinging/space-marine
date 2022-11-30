package com.spaceMarine.mapper;

import java.util.List;

import com.spaceMarine.vo.ProductVO;

public interface ProductMapper {

	// R
	public List<ProductVO> getList();

	// R
	public ProductVO read(String code);
}
