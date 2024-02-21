package com.lib.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.ui.Model;

import com.lib.dto.*;

public interface BoardService { 
	public ArrayList<BoardDto> list();
	public void write(HashMap<String, String> param);
	public BoardDto contentView(HashMap<String, String>param);
	public void modify(HashMap<String, String>param);
	public void delete(HashMap<String, String>param);
}
