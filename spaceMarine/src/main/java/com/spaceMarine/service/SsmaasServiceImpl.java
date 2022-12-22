package com.spaceMarine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.spaceMarine.dto.SsmaasDTO;
import com.spaceMarine.mapper.SsmaasMapper;

public class SsmaasServiceImpl implements SsmaasService {

	@Autowired
	@Qualifier("sqlSessionFactory2")
	private SsmaasMapper mapper;

	@Override
	public List<SsmaasDTO> getList_Sa_Category_Name() {
		return mapper.getList_Sa_Category_Name();
	}

}
