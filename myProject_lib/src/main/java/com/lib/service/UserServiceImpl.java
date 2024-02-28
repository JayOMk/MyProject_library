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
	
//    @Autowired
//    private SqlSession sqlSession;
    
	//dao 호출
	@Autowired
	private UserDao dao;

	@Override
	public void register(RegisterDto registerDto) {
		dao.register(registerDto);
		
	}

	@Override
	public int overlapCheck(String value, String valueType) {
		return dao.overlapCheck(value, valueType);
	}

//	@Override
//	public ArrayList<UserDto> loginYn(HashMap<String, String> param) {
//        UserDao dao = sqlSession.getMapper(UserDao.class);
//        ArrayList<UserDto> dtos = dao.loginYn(param);
//        return dtos;
//	}

//	@Override
//	public void write(HashMap<String, String> param) {
//        UserDao dao = sqlSession.getMapper(UserDao.class);
//        dao.write(param);
//	}

//	@Override
//	public void signUp(UserDto userDto) {
//	    UserDao dao = sqlSession.getMapper(UserDao.class);
//	    dao.signUp(userDto);	
//	}
}
