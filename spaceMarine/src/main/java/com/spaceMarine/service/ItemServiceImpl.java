package com.spaceMarine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spaceMarine.mapper.ItemMapper;
import com.spaceMarine.vo.Criteria;
import com.spaceMarine.vo.ItemVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	@Qualifier("sqlSessionFactory")
	private ItemMapper mapper;

	@Override
	public List<ItemVO> getList(Criteria cri) {
		log.info("getList with criteria: " + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public Integer getTotalCount(Criteria cri) {
		log.info("get total count.......");
		return mapper.getTotalCount(cri);
	}

	@Override
	public ItemVO read(String impa_cd) {
		log.info("Impa_cd.........");
		return mapper.read(impa_cd);
	}

}
