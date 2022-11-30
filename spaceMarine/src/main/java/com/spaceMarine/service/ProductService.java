package com.spaceMarine.service;

import java.util.List;

import com.spaceMarine.vo.ProductVO;

public interface ProductService {

	public List<ProductVO> getList();

	public ProductVO get(String code);

}
