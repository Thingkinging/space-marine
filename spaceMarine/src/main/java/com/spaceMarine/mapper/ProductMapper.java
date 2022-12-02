package com.spaceMarine.mapper;

import java.util.List;

import com.spaceMarine.vo.Criteria;
import com.spaceMarine.vo.ProductVO;

public interface ProductMapper {

	// R
	public List<ProductVO> getList();

	// R
	public ProductVO read(String code);

	// 페이징 처리
	public List<ProductVO> getListWithPaging(Criteria cri);

	// 전체 데이터의 개수 처리
	public Integer getTotalCount(Criteria cri);
}
