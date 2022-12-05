package com.spaceMarine.service;

import java.util.List;

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
		return mapper.getList();
	}

	@Override
	public CategoryVO getCtgr_no(int ctgr_no) {
		return mapper.read(ctgr_no);
	}

}
