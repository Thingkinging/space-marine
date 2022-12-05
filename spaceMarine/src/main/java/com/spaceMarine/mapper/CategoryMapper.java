package com.spaceMarine.mapper;

import java.util.List;

import com.spaceMarine.vo.CategoryVO;

public interface CategoryMapper {

	// C
	public void insert(CategoryVO categoryVO);

	// R
	public CategoryVO read(int ctgr_no);

	public List<CategoryVO> getList();

	// U
	public String update(CategoryVO categoryVO);

	// D
	public String delete(int ctgr_no);
}
