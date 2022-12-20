package com.spaceMarine.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CategoryVO {

	private int LVL_LVL; // pk
	private String LVL_CD; // pk
	private String LVL_NM_KO;
	private String LVL_NM_ENG;
	private String H_LVL_CD;
	private int LVL_SEQ;
	private String USE_YN;
	private String INS_ID;
	private Date INS_DT;
	private String UPD_ID;
	private Date UPD_DT;

}
