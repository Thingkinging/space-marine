package com.spaceMarine.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.spaceMarine.dto.SsmaasDTO;

public class SsmaasDAOJdbc implements SsmaasDAO {

	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<SsmaasDTO> getAll() {
		return null;
	}

	@Override
	public SsmaasDTO read(String code) {
		return null;
	}

}
