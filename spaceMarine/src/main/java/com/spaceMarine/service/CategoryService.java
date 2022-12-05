package com.spaceMarine.service;

import java.util.List;

import com.spaceMarine.vo.CategoryVO;

public interface CategoryService {

	public List<CategoryVO> getList();

	public CategoryVO getCtgr_no(int ctgr_no);

}
