package com.lib.service;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;

import com.lib.dao.UserDao;
import com.lib.domain.Member;
import com.lib.dto.UserDto;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class RegisterService {
	
	@Autowired
	private SqlSession sqlSession;
	
    private final PasswordEncoder passwordEncoder;
    private final UserDao dao;

    @Autowired
    public RegisterService(PasswordEncoder passwordEncoder, UserDao dao) {
        this.passwordEncoder = passwordEncoder;
        this.dao = dao;
    }

    @Transactional
   	public String join(@RequestBody UserDto dto){
        // 중복 회원 검증
       	if (dao.countByUserid(dto.getEmail()) > 0) {
            throw new IllegalStateException("이미 존재하는 회원입니다.");
        }
        
        // 비밀번호 암호화
        String encodedPassword = passwordEncoder.encode(dto.getPassword());
        
        // 사용자의 권한 설정
//        dto.setRole("ROLE_USER");
        
        // 암호화된 비밀번호와 이메일을 UserDto 객체에 저장
          dto.setPassword(encodedPassword);
  
        dao.save(dto); // MyBatis를 통한 DB 저장
        
        
        
        // 영속성 컨텍스트에 저장된 UserDto를 다시 조회
        UserDto savedUser = dao.findByUserId(dto.getEmail());
        if (savedUser != null) {
            return savedUser.getEmail(); // 저장된 UserDto의 ID값 리턴
        } else {
            throw new IllegalStateException("회원 가입 후 정보 조회 실패");
        }
        
    }
    
    @Transactional
    public String login(String email, String password) {
        // 이메일(또는 아이디)로 사용자 조회
        UserDto user = dao.findByUserId(email);
        if (user == null) {
        	log.info("@#email===> "+email);
            throw new IllegalArgumentException("해당하는 사용자를 찾을 수 없습니다.");
        }
        
        // 입력한 비밀번호와 저장된 암호화된 비밀번호 비교
        if (!passwordEncoder.matches(password, user.getPassword())) {
        	log.info("@#password===> "+password);
            throw new IllegalArgumentException("비밀번호가 일치하지 않습니다.");
        }
        
        // 로그인 성공 시 사용자의 이메일(또는 아이디) 반환
        return user.getEmail();
    }
}