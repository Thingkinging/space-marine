package com.spaceMarine.service;

import java.util.List;

import com.spaceMarine.vo.CategoryVO;

public interface CategoryService {

	public List<CategoryVO> getList_LVL_CD();

	public List<CategoryVO> getList_H_LVL_CD();

	public List<CategoryVO> getList_LVL_CD_CD();

	public CategoryVO Lvl_Lvl(int Lvl_Lvl);

}
