package com.lib.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Optional;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;

import com.lib.domain.Member;
import com.lib.dto.*;

@Mapper
public interface UserDao {
//    public ArrayList<UserDto> loginYn(HashMap<String, String> param);
//    public void write(HashMap<String, String> param);
//    public void signUp(UserDto userDto);
//	void register(RegisterDto registerDto);
//	int overlapCheck(String value, String valueType);
	
//    @Select("SELECT * FROM user WHERE email = #{email}")
    UserDto findByUserId(@Param("email") String email);
    
//    @Select("SELECT COUNT(*) FROM user WHERE email = #{email}")
    int countByUserid(@Param("email") String email);

//    @Insert("INSERT INTO user (email, password, username, phone, address) VALUES (#{email}, #{password}, #{username}, #{phone}, #{address})")
//    void save(@Param("email") String email, @Param("password") String password);
    void save(UserDto userDto);
    
    Optional<UserDto> findOne(String email);

}
