package com.spaceMarine.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.spaceMarine.dto.SsmaasDTO;
import com.spaceMarine.mapper.CategoryMapper;
import com.spaceMarine.mapper.SsmaasMapper;

public class SsmaasServiceImpl implements SsmaasService {

	@Autowired
	@Resource(name = "mssql-sqlSession")
	private SsmaasMapper mapper;

	@Autowired
	@Resource(name = "mariadb-sqlSession")
	private CategoryMapper categoryMapper;

	@Override
	public List<SsmaasDTO> getList_Sa_Category_Name() {

		return mapper.getList_Sa_Category_Name();
	}

}
