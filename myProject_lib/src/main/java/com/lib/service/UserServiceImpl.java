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
@Service("UserService") // 사용 인터페이스 이름
public class UserServiceImpl implements UserService{
	
	//dao 호출
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<UserDto> loginYn(HashMap<String, String>param) {
		
		String mPw = param.get("password");
		UserDao dao = sqlSession.getMapper(UserDao.class);
		ArrayList<UserDto> dtos = dao.loginYn(param);
		
		return dtos;
	}
	
	@Override
	public void write(HashMap<String, String> param) {
		
		UserDao dao = sqlSession.getMapper(UserDao.class);
		dao.write(param);
		
	}
}
