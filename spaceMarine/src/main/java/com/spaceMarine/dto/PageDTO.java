package com.spaceMarine.dto;

import com.spaceMarine.vo.Criteria;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

	private int startPage;
	private int endPage;
	private boolean prev, next;

	private Integer total;
	private Criteria cri;

	public PageDTO(Criteria cri, Integer total) {
		this.total = total;
		this.cri = cri;

		// 페이징 끝번호
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0) * 10);

		// 페이징 시작번호
		this.startPage = this.endPage - 9;

		// total을 통해 endPage 계산
		Integer readEnd = (int) (Math.ceil(total * 1.0) / cri.getAmount());
		if (readEnd < this.endPage) {
			this.endPage = readEnd;
		}

		// 이전페이지
		this.prev = this.startPage > 1;

		// 다음페이지
		this.next = this.endPage < readEnd;
	}
}
