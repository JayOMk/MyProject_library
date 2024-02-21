package com.lib.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import com.lib.dto.*;

//실행시 인터페이스에서 매퍼파일을 읽어 들이도록 지정
@Mapper
public interface BoardDao {
	public ArrayList<BoardDto> list();
	public void write(HashMap<String, String> param);
	public BoardDto contentView(HashMap<String, String>param);
	public void modify(HashMap<String, String>param);
	public void delete(HashMap<String, String>param);
}
