package com.lib.config;

import jakarta.servlet.DispatcherType;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.lib.dao.UserDao;

import static org.springframework.security.config.Customizer.withDefaults;

import org.springframework.beans.factory.annotation.Autowired;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class SecurityConfig {
	
//	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//	String username = authentication.getName(); // 사용자의 이름을 가져옵니다.
    
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    
    
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http           
	        	.csrf(customizer -> 
	        		customizer.disable() // CSRF 비활성화
	        	)
	        	.cors(customizer -> 
	        		customizer.disable() // CORS 비활성화
	        	)
	        	.sessionManagement(session -> session
	        		    .maximumSessions(1) // 최대 동시 세션 수
	        		    .maxSessionsPreventsLogin(false) // 추가 로그인을 방지할지 여부; 기존 세션 만료시킴
	        		)
                .authorizeHttpRequests(request -> request
                        .dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
                        .requestMatchers("/", "/login", "/login-process").permitAll() // 로그인 페이지 접근 허용
                        .requestMatchers("/", "/api", "/css/zonebiz/**", "/js/zonebiz/**", 
                        		"/logintest/login","/logintest/register", "/main", "/searchForm",
                        		"/serchForm/bookDetailPage","/images/**", "/register", "/auth/join","/view/login",
                        		"/bookDetailPage/{isbn}"
                        		).permitAll()
                        .anyRequest().authenticated() // 어떠한 요청이라도 인증필요
                )
                .formLogin(login -> login  // form 방식 로그인 사용
                        .loginPage("/login") // [A] 커스텀 로그인 페이지 지정
                        .loginProcessingUrl("/login-process") // [B] submit 받을 url
                        .usernameParameter("email") // [C] submit할 아이디
                        .passwordParameter("password") // [D] submit할 비밀번호
                        .defaultSuccessUrl("/main", true) // 성공시 main
                        .permitAll() // 대시보드 이동이 막히면 안되므로 얘는 허용
                )
                .logout(withDefaults()); // 로그아웃은 기본설정으로 (/logout으로 인증해제)
        
//        http.userDetailsService(userDetailsService(userDao, passwordEncoder)); // 사용자 세부 정보 서비스 설정

        return http.build();
    }
}