package com.spaceMarine.mapper;

import java.util.List;

import com.spaceMarine.vo.CategoryVO;

public interface CategoryMapper {

	public CategoryVO read(int ctgr_no);

	public List<CategoryVO> getList_LVL_CD();

	public List<CategoryVO> getList_H_LVL_CD();

	public List<CategoryVO> getList_LVL_CD_CD();

	public CategoryVO lvOneCode(CategoryVO lvOne);

	public List<CategoryVO> lvTwoItem(String lvTwo);

}
