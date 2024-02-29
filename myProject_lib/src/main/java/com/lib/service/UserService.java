package com.lib.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lib.domain.Member;
import com.lib.dto.*;

@Service
public interface UserService {
//  public ArrayList<UserDto> loginYn(HashMap<String, String> param);
//  public void write(HashMap<String, String> param);
//  public void signUp(UserDto userDto);
	
//    private final MemberRepository repository;
//    @Autowired
//    public MemberService(MemberRepository repository) {
//        this.repository = repository;
//    }
//    public Optional<Member> findOne(String userId) {
//        return repository.findByUserid(userId);
//    }
	
		Optional<UserDto> findOne(String email);
	

}
