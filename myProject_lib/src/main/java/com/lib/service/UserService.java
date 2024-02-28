package com.lib.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.lib.dto.*;

public interface UserService {
//  public ArrayList<UserDto> loginYn(HashMap<String, String> param);
//  public void write(HashMap<String, String> param);
//  public void signUp(UserDto userDto);
	void register(RegisterDto registerDto);
	int overlapCheck(String value, String valueType);
}
