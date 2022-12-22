package com.spaceMarine.dao;

import java.util.List;

import com.spaceMarine.dto.SsmaasDTO;

public interface SsmaasDAO {

	public List<SsmaasDTO> getAll();

	public SsmaasDTO read(String code);

}
