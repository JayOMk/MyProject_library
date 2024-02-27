package com.lib.controller;

import java.io.Console;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lib.dao.UserDao;
import com.lib.dto.*;
import com.lib.service.*;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {

	@Autowired
	private UserService service;
	
    @Autowired
    SqlSession sqlSession; 
	
	@RequestMapping("/login")
	public String login() {
		log.info("@# login");
		
		return "login";
	}
	
    // 로그인 성공 시 세션에 사용자 정보 저장
    @PostMapping("/loginYn")
    public String login_yn(@RequestParam HashMap<String, String> param, HttpSession session) {
        log.info("@# loginYn");

        ArrayList<UserDto> dtos = service.loginYn(param);
        log.info("@# dtos: " + dtos);

        if (dtos.isEmpty()) {
            return "redirect:login";
        } else {
            if (param.get("password").equals(dtos.get(0).getPassword())) {
                // 로그인 성공 시 사용자 정보를 세션에 저장
                session.setAttribute("userEmail", dtos.get(0).getEmail());
                return "redirect:main";
            } else {
                return "redirect:login";
            }
        }
    }
	
	@RequestMapping("/main")
	public String main() {
		log.info("@# main");
		
		return "main";
	}
	
	@RequestMapping("/register")
	public String register() {
		log.info("@# register");
		
		return "register";
	}
	
	@RequestMapping("/registerOk")
	public String registerOk(@RequestParam HashMap<String, String>param) {
		log.info("@# registerOk");
		
		service.write(param);
		
		return "redirect:login";
	}
	
	@RequestMapping("/signUp")
	public String signUp(@RequestParam HashMap<String, String> param, HttpSession session) {
	    log.info("@# signUp");

	    // 회원가입 정보를 DB에 저장
	    UserDto userDto = new UserDto();
	    userDto.setEmail(param.get("email"));
	    userDto.setName(param.get("name"));
	    userDto.setPhone(param.get("phone"));
	    userDto.setPassword(param.get("password"));

	    sqlSession.getMapper(UserDao.class).signUp(userDto);

	    // 회원 가입 성공 시 세션에 사용자 정보 저장
	    session.setAttribute("email", param.get("email"));

	    return "redirect:/login"; 
	}
}
