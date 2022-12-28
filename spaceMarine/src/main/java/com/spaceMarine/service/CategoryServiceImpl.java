package com.spaceMarine.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spaceMarine.mapper.CategoryMapper;
import com.spaceMarine.vo.CategoryVO;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryMapper mariadbSqlSession;

	@Override
	public List<CategoryVO> getList_LVL_CD() {

		return mariadbSqlSession.getList_LVL_CD();
	}

	@Override
	public CategoryVO Lvl_Lvl(int Lvl_Lvl) {
		return mariadbSqlSession.read(Lvl_Lvl);
	}

	@Override
	public List<CategoryVO> getList_H_LVL_CD() {
		List<CategoryVO> list = new ArrayList<CategoryVO>();
		Set<CategoryVO> set = new HashSet<CategoryVO>(list);
		List<CategoryVO> newList = new ArrayList<CategoryVO>(set);

		newList = mariadbSqlSession.getList_H_LVL_CD();

		return newList;
	}

	@Override
	public List<CategoryVO> getList_LVL_CD_CD() {
		List<CategoryVO> list = new ArrayList<CategoryVO>();
		Set<CategoryVO> set = new HashSet<CategoryVO>(list);
		List<CategoryVO> newList = new ArrayList<CategoryVO>(set);

		newList = mariadbSqlSession.getList_LVL_CD_CD();

		return newList;
	}

	@Override
	public CategoryVO lvOneCode(CategoryVO lvCode) {
		CategoryVO categoryVO = new CategoryVO();
//		lvCode = categoryVO.getLVL_CD();

		return mariadbSqlSession.lvOneCode(lvCode);
	}

	@Override
	public List<CategoryVO> lvTwoItem(String lvTwo) {
		CategoryVO vo = new CategoryVO();
//		vo.setH_LVL_CD(lvTwo);
		List<CategoryVO> list = new ArrayList<CategoryVO>();
		Set<CategoryVO> set = new HashSet<CategoryVO>(list);
		List<CategoryVO> newList = new ArrayList<CategoryVO>(set);

		newList = mariadbSqlSession.lvTwoItem(lvTwo);
//		newList.subList(2, 3);

		return newList;
	}

}
