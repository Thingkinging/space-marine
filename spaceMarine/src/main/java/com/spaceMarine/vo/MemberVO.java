package com.spaceMarine.vo;

import lombok.Data;

@Data
public class MemberVO {

	// MariaDB bas1140
	private String id;
	private String pwd;
	private String co_cd; // 회사코드 *PK
	private String co_nm; // 회사명
	private String co_nm_en; // 회사명(영문)
	private String biz_no; // 사업자등록번호
	private String co_no; // 법인등록번호
	private String co_gbn; // 법인구분
	private String co_seq; // 회계기수
	private String cd_st_dt; // 회계연도시작일
	private String co_fn_dt; // 회계연도종료일
	private String tel_no; // 전화번호
	private String fax_no; // 팩스번호
	private String zip_no; // 우편번호
	private String addr_h; // 주소
	private String addr_d; // 상세주소
	private String ceo_nm; // 대표자명
	private String soc_no; // 대표자 주민등록번호
	private String ceo_tel_no; // 자택전화번호
	private String ceo_zip_no; // 자택우편번호
	private String ceo_addr_h; // 자택주소
	private String ceo_addr_d; // 자택세부주소
	private String open_dt; // 개업일
	private String start_dt; // 설입일
	private String curr_cd; // 기본사용화폐단위
	private String use_yn; // 사용여부
	private String ins_id; // 최초입력자ID
	private String ins_dt; // 최초입력일시
	private String upd_id; // 최종수정자ID
	private String upd_dt; // 최종수정일시
}
