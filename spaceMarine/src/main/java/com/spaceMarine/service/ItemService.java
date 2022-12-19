package com.spaceMarine.service;

import java.util.List;

import com.spaceMarine.vo.Criteria;
import com.spaceMarine.vo.ItemVO;

public interface ItemService {

	// 페이징 처리 ( 기존에서 Criteria 추가 )
	public List<ItemVO> getList(Criteria cri);

	// 전체 데이터 개수
	public Integer getTotalCount(Criteria cri);

	public ItemVO read(String impa_cd);

}
