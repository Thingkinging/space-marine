package com.spaceMarine.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ItemVO {

	// 물품 리스트
	private String LVL1_CD;
	private String LVL2_CD;
	private String LVL3_CD;
	private String LVL4_CD;
	private String IMPA_CD; // pk
	private String ITEM_NM_KO;
	private String ITEM_CD;
	private String ADD_CD1;
	private String ADD_CD2;
	private String ADD_CD3;
	private String ITEM_NM_EN;
	private String ITEM_NM_SP;
	private String ITEM_NM_JP;
	private String ITEM_NM_CN;
	private String ITEM_NM_RS;
	private String UNIT;
	private String ADD_COL1;
	private String ADD_COL2;
	private float ADD_COL3;
	private String USE_YN;
	private String INS_ID;
	private Date INS_DT;
	private String UPD_ID;
	private Date UPD_DT;

}
