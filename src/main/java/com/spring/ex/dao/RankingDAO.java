package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.dto.RankingDTO;

@Repository
public interface RankingDAO {


	List<RankingDTO> benchlist = null;

	public void inputrankOk(String email, String bench, String dead, String squat);

	public void insert(String email, String name);

	public List<RankingDTO> benchlist();

	public List<RankingDTO> deadlist();

	public List<RankingDTO> squatlist();

	public List<RankingDTO> totallist();

}
