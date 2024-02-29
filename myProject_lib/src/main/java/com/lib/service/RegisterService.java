package com.lib.service;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lib.dao.UserDao;
import com.lib.domain.Member;
import com.lib.dto.UserDto;

@Service
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
    public Long join(String email, String password) {
        // 중복 회원 검증
        if (dao.countByUserid(email) > 0) {
            throw new IllegalStateException("이미 존재하는 회원입니다.");
        }

//        String encodedPassword = passwordEncoder.encode(password);
//        dao.save(new dao(email, encodedPassword));

        // 회원 ID 반환 혹은 다른 방식으로 처리 (예: 회원 가입 처리 후 반환된 키 등)
//        return dao.findByUserId(email).getId();
        
        // 비밀번호 암호화
        String encodedPassword = passwordEncoder.encode(password);
        
        // 암호화된 비밀번호와 이메일을 UserDto 객체에 저장
        UserDto userDto = new UserDto();
        userDto.setEmail(email);
//        UserDto userDto = new UserDto(email, encodedPassword); // UserDto를 이용하여 사용자 정보 생성
        userDto.setPassword(encodedPassword);
  
        dao.save(userDto); // MyBatis를 통한 DB 저장
        
        // 영속성 컨텍스트에 저장된 UserDto를 다시 조회
        UserDto savedUser = dao.findByUserId(email);
        if (savedUser != null) {
            return savedUser.getId(); // 저장된 UserDto의 ID값 리턴
        } else {
            throw new IllegalStateException("회원 가입 후 정보 조회 실패");
        }
        
    }
}