package com.lib.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lib.dao.*;
import com.lib.dto.*;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("BoardService") // 사용 인터페이스 이름
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<BoardDto> list() {
		log.info("@# BoardServiceImpl.list() start");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		ArrayList<BoardDto> list = dao.list();
		
		log.info("@# BoardServiceImpl.list() end");
		return list;
	}

	@Override
	public void write(HashMap<String, String> param) {
		log.info("@# BoardServiceImpl.write() start");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.write(param);
		
		log.info("@# BoardServiceImpl.write() end");
	}

	@Override
	public BoardDto contentView(HashMap<String, String> param) {
		log.info("@# BoardServiceImpl.contentView() start");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		BoardDto dto = dao.contentView(param);
		
		log.info("@# BoardServiceImpl.contentView() end");
		return dto;
	}

	@Override
	public void modify(HashMap<String, String> param) {
		log.info("@# BoardServiceImpl.modify() start");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.modify(param);
		
		
		log.info("@# BoardServiceImpl.modify() end");
	}

	@Override
	public void delete(HashMap<String, String> param) {
		log.info("@# BoardServiceImpl.delete() start");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.delete(param);
		
		log.info("@# BoardServiceImpl.delete() end");
	}
	
}
