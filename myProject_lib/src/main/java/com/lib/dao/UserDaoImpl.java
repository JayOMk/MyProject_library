package com.lib.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.lib.dto.RegisterDto;

public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SqlSession sql;

	@Override
	public void register(RegisterDto registerDto) {
		sql.insert("user.registerDto", registerDto);
		
	}

	@Override
	public int overlapCheck(String value, String valueType) {
		Map<String, String> map = new HashMap<>();
		map.put("value", value);
		map.put("valueType", valueType);
		return sql.selectOne("user.overlapCheck" ,map);
	}

}
