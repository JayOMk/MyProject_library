package com.lib.controller;

import java.io.Console;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

import com.lib.config.UserDetailServiceConfig;
import com.lib.dao.UserDao;
import com.lib.dto.*;
import com.lib.service.*;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {

	    @Autowired
	    private UserDetailServiceConfig userDetailsService;
	
	    @PostMapping("/login-process")
	    public String login(HttpServletRequest request) {
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");
	
	        try {
	            // UserDetails 서비스를 사용하여 사용자 인증 처리
	            // 여기에서는 성공시 홈 페이지로 리다이렉트하는 것으로 가정합니다.
	            userDetailsService.loadUserByUsername(email);
	            return "redirect:/main"; // 성공시 리다이렉트할 경로
	        } catch (AuthenticationException e) {
	            // 인증 실패 시 로그인 페이지로 리다이렉트
	            return "redirect:/login?error";
	        }
	    }
	}