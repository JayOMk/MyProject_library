package com.lib.config;

import com.lib.dao.UserDao;
import com.lib.domain.Member;
import com.lib.dto.UserDto;
import com.lib.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;


@Component
public class UserDetailServiceConfig implements UserDetailsService {
    private final UserDao dao;
    private final PasswordEncoder passwordEncoder;
    
//    @Autowired
//    public UserDetailServiceConfig(UserDao userDao) {
//        this.dao = userDao;
//    }
    
    public UserDetailServiceConfig(UserDao dao, PasswordEncoder passwordEncoder) {
        this.dao = dao;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
    	
//        String name = dao.findNameByEmail(email);
//        String phone = dao.findPhoneNumberByEmail(email);
//        String address = dao.findAddressByEmail(email);
    	
        UserDto dto = dao.findByUserId(email);
        if (dto == null) {
            throw new UsernameNotFoundException("없는 회원입니다");
        }
        
        // 사용자가 입력한 password를 변수에 할당
        String password = dto.getPassword();
        

//        String encodedPassword = passwordEncoder.encode(password); // 입력한 비밀번호를 해시화
        
        // DB에서 가져온 비밀번호와 사용자가 입력한 비밀번호를 비교하여 검증
        // 사용자가 입력한 비밀번호와 데이터베이스에서 가져온 암호화된 비밀번호를 비교하여 검증
//        if (!passwordEncoder.matches(password, encodedPassword)) {
//            throw new BadCredentialsException("비밀번호가 일치하지 않습니다.");
//        }
        
        return User.builder()
                .username(dto.getEmail())
                .password(password)
//                .password(encodedPassword)
                .roles(dto.getRole())
                .build();
    }
}
