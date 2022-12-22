package com.spaceMarine.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spaceMarine.mapper.CategoryMapper;
import com.spaceMarine.vo.CategoryVO;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	@Qualifier("sqlSessionFactory")
	private DataSource dataSource;

	@Autowired
	@Qualifier("sqlSessionFactory")
	private CategoryMapper mapper;

	@Override
	public List<CategoryVO> getList_LVL_CD() {

		return mapper.getList_LVL_CD();
	}

	@Override
	public CategoryVO Lvl_Lvl(int Lvl_Lvl) {
		return mapper.read(Lvl_Lvl);
	}

	@Transactional
	@Override
	public List<CategoryVO> getList_H_LVL_CD() {
		List<CategoryVO> list = new ArrayList<CategoryVO>();
		Set<CategoryVO> set = new HashSet<CategoryVO>(list);
		List<CategoryVO> newList = new ArrayList<CategoryVO>(set);

		PreparedStatement pstmt = null;
		try {
			Connection conn = dataSource.getConnection();
//			String query = "WITH RECURSIVE cte AS\r\n" + "(\r\n"
//					+ "	SELECT LVL_LVL, LVL_CD, H_LVL_CD, LVL_SEQ, 1 AS Lv FROM category WHERE H_LVL_CD=0\r\n"
//					+ "	UNION all\r\n"
//					+ "	SELECT a.LVL_LVL, a.LVL_CD, a.H_LVL_CD, a.LVL_SEQ, b.Lv + 1 FROM category AS a\r\n"
//					+ "	INNER JOIN cte AS b ON a.H_LVL_CD = b.LVL_CD\r\n" + ")\r\n"
//					+ "SELECT DISTINCT substr(LVL_CD,1,2) AS LVL_CD, SUBSTR(h_lvl_cd,3) AS h_LVL_CD FROM cte";
			String query = "WITH RECURSIVE cte AS\r\n" + "(\r\n"
					+ "	SELECT LVL_LVL, LVL_CD, H_LVL_CD, LVL_SEQ, 1 AS Lv FROM category WHERE H_LVL_CD=0\r\n"
					+ "	UNION all\r\n"
					+ "	SELECT a.LVL_LVL, a.LVL_CD, a.H_LVL_CD, a.LVL_SEQ, b.Lv + 1 FROM category AS a\r\n"
					+ "	INNER JOIN cte AS b ON a.H_LVL_CD = b.LVL_CD\r\n" + ")\r\n"
					+ "SELECT DISTINCT substr(LVL_CD,1,2) AS LVL_CD, case when substr(LVL_CD,1,2) = substr(H_LVL_CD,1,2) then SUBSTR(H_LVL_CD,3) END AS H_LVL_CD FROM cte";

			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				String lvl_cd = rs.getString("LVL_CD");
				String h_lvl_cd = rs.getString("H_LVL_CD");

				CategoryVO vo = new CategoryVO();

				vo.setLVL_CD(lvl_cd);
				vo.setH_LVL_CD(h_lvl_cd);
				newList.add(vo);

				newList = mapper.getList_H_LVL_CD();
			}

			rs.close();
			pstmt.close();
			conn.close();
		} catch (

		Exception e) {
			e.printStackTrace();
		}

		return newList;
	}

}
