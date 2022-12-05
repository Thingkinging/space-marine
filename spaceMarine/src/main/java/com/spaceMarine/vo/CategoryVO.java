package com.spaceMarine.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CategoryVO {
	private int ctgr_no; // pk
	private String ctgr_old_cd;
	private int ctgr_pno;
	private String ctgr_nm_ko;
	private String ctgr_nm_cn;
	private String ctgr_nm_jp;
	private String ctgr_nm_en;
	private String ctgr_nm_sp;
	private String ctgr_nm_ru;
	private int ctgr_seq;
	private char use_yn;
	private String ins_id;
	private Date ins_dt;
	private String upd_id;
	private Date upd_dt;

}
