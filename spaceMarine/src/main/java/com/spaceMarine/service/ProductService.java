package com.spaceMarine.service;

import java.util.List;

import com.spaceMarine.vo.Criteria;
import com.spaceMarine.vo.ProductVO;

public interface ProductService {

	// 페이징 처리 ( 기존에서 Criteria 추가 )
	public List<ProductVO> getList(Criteria cri);

	public ProductVO getCode(String code);

	// 전체 데이터 개수
	public Integer getTotalCount(Criteria cri);

	public ProductVO getPrice(String price);

}
