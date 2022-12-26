package com.spaceMarine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.spaceMarine.dto.SsmaasDTO;
import com.spaceMarine.mapper.CategoryMapper;
import com.spaceMarine.mapper2.SsmaasMapper;

public class SsmaasServiceImpl implements SsmaasService {

	@Autowired
	private SsmaasMapper mssqlSqlSession;

	@Autowired
	private CategoryMapper mariadbSqlSession;

	@Override
	public List<SsmaasDTO> getList_Sa_Category_Name() {

		return mssqlSqlSession.getList_Sa_Category_Name();
	}

}
