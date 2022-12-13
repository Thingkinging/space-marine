package com.spaceMarine.vo;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

	private int startPage;
	private int endPage;
	private boolean prev, next;

	private int total;
	private Criteria cri;

	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;

		// 페이징의 끝 번호(endPage) 계산
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;

		// 페이징의 시작번호(startPage) 계산
		this.startPage = this.endPage - 9;

		// total을 통해 endPage의 재계산
		int readEnd = (int) (Math.ceil(total * 1.0) / cri.getAmount());

		if (readEnd < this.endPage) {
			this.endPage = readEnd;
		}

		// 이전(prev) 계산
		this.prev = this.startPage > 1;

		// 다음(next) 계싼
		this.next = this.endPage < readEnd;
	}

}
