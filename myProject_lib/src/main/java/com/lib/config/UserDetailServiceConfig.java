package com.lib.config;

import com.lib.dao.UserDao;
import com.lib.domain.Member;
import com.lib.dto.UserDto;
import com.lib.service.RegisterService;
import com.lib.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
public class UserDetailServiceConfig implements UserDetailsService {
//    private final UserService service;
//    private final RegisterService service;
    private final UserDao dao;

//    @Autowired
//    public UserDetailServiceConfig(RegisterService service) {
//        this.service = service;
//    }
    
    @Autowired
    public UserDetailServiceConfig(UserDao userDao) {
        this.dao = userDao;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
//        Optional<UserDto> findOne = service.findOne(email);
//        Optional<UserDto> findByUserId = service.findByUserId(email);
//        UserDto dto = findByUserId.orElseThrow(() -> new UsernameNotFoundException("없는 회원입니다"));
    	
        UserDto dto = dao.findByUserId(email);
        if (dto == null) {
            throw new UsernameNotFoundException("없는 회원입니다");
        }

        return User.builder()
                .username(dto.getEmail())
                .password(dto.getPassword())
                .roles(dto.getRole())
                .build();
    }
}
