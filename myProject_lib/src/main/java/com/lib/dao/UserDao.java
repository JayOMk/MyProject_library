package com.lib.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.lib.dto.*;

@Mapper
public interface UserDao {
//    public ArrayList<UserDto> loginYn(HashMap<String, String> param);
//    public void write(HashMap<String, String> param);
//    public void signUp(UserDto userDto);
	void register(RegisterDto registerDto);
	int overlapCheck(String value, String valueType);
}
