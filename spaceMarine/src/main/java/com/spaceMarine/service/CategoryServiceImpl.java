package com.spaceMarine.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spaceMarine.mapper.CategoryMapper;
import com.spaceMarine.vo.CategoryVO;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryMapper mapper;

	@Override
	public List<CategoryVO> getList() {
		Map<Integer, Integer> menuList = new HashMap<Integer, Integer>();
		CategoryVO vo = new CategoryVO();
		menuList.containsKey(vo);

		return mapper.getList();
	}

	@Override
	public CategoryVO Lvl_Lvl(int Lvl_Lvl) {
		return mapper.read(Lvl_Lvl);
	}

}
