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
	
    UserDto findByUserId(@Param("email") String email);
    
    int countByUserid(@Param("email") String email);

    void save(UserDto userDto);
    
    // 사용자 이름, 연락처, 주소를 가져오는 메서드 추가
    String findNameByEmail(@Param("email") String email);
    
    String findPhoneNumberByEmail(@Param("email") String email);
    
    String findAddressByEmail(@Param("email") String email);

}
