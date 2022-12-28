package com.spaceMarine.mapper;

import java.util.List;

import com.spaceMarine.vo.Criteria;
import com.spaceMarine.vo.ItemVO;

public interface ItemMapper {

	public List<ItemVO> getList();

	public List<ItemVO> lvItem(ItemVO item);

	public ItemVO read(String impa_cd);

	// 페이징 처리
	public List<ItemVO> getListWithPaging(Criteria cri);

	// 전체 데이터의 개수 처리
	public Integer getTotalCount(Criteria cri);

}
