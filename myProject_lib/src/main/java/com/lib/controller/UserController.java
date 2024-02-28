package com.lib.controller;

import java.io.Console;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
//	@RequestMapping("/login")
//	public String login() {
//		log.info("@# login");
//		
//		return "login";
//	}
	
	@GetMapping("/register")
	public String register() {
		log.info("@# register");
		
	    return "register";
	}
	
	@PostMapping("/register")
	public String registerProc(@Valid RegisterDto registerDto, BindingResult bindingResult, Model model) {
		System.out.println(registerDto);

		if(bindingResult.hasErrors()) {
			System.out.println("에러");
			
			List<FieldError> list = bindingResult.getFieldErrors();
			Map<String, String> errorMsg = new HashMap<>();
			
			for(int i=0; i<list.size(); i++) {
				String field = list.get(i).getField(); 
				String message = list.get(i).getDefaultMessage(); 
						
				System.out.println("필드 = " + field);
				System.out.println("메세지 = " +message);
				
				errorMsg.put(field, message);
			}
			model.addAttribute("errorMsg", errorMsg);
			return "register";
		}
		service.register(registerDto);
		
		return "redirect:/login";
	}
	
	@ResponseBody
	@GetMapping("/overlapCheck")
	public int overlapCheck(String value, String valueType) {
//		value = 중복체크할 값
//		valeuType = username, nickname
		System.out.println(value);
		System.out.println(valueType);
		int count = service.overlapCheck(value, valueType);
		
		System.out.println(count);
		return count;
	}

	
//    // 로그인 성공 시 세션에 사용자 정보 저장
//    @PostMapping("/loginYn")
//    public String login_yn(@RequestParam HashMap<String, String> param, HttpSession session) {
//        log.info("@# loginYn");
//
//        ArrayList<UserDto> dtos = service.loginYn(param);
//        log.info("@# dtos: " + dtos);
//
//        if (dtos.isEmpty()) {
//            return "redirect:login";
//        } else {
//            if (param.get("password").equals(dtos.get(0).getPassword())) {
//                // 로그인 성공 시 사용자 정보를 세션에 저장
//                session.setAttribute("userEmail", dtos.get(0).getEmail());
//                return "redirect:main";
//            } else {
//                return "redirect:login";
//            }
//        }
//    }
	
	@RequestMapping("/main")
	public String main() {
		log.info("@# main");
		
		return "main";
	}
	
//	@RequestMapping("/registerOk")
//	public String registerOk(@RequestParam HashMap<String, String>param) {
//		log.info("@# registerOk");
//		
//		service.write(param);
//		
//		return "redirect:login";
//	}
	
//	@RequestMapping("/signUp")
//	public String signUp(@RequestParam HashMap<String, String> param, HttpSession session) {
//	    log.info("@# signUp");
//
//	    // 회원가입 정보를 DB에 저장
//	    UserDto userDto = new UserDto();
//	    userDto.setEmail(param.get("email"));
//	    userDto.setName(param.get("name"));
//	    userDto.setPhone(param.get("phone"));
//	    userDto.setPassword(param.get("password"));
//
//	    sqlSession.getMapper(UserDao.class).signUp(userDto);
//
//	    // 회원 가입 성공 시 세션에 사용자 정보 저장
//	    session.setAttribute("email", param.get("email"));
//
//	    return "redirect:/login"; 
//	}
}
