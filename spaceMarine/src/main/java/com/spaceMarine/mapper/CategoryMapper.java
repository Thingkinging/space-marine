package com.spaceMarine.mapper;

import java.util.List;

import com.spaceMarine.vo.CategoryVO;

public interface CategoryMapper {

	public CategoryVO read(int ctgr_no);

	public List<CategoryVO> getList();

}
