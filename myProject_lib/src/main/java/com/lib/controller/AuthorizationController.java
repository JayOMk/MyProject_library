package com.lib.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lib.dto.UserDto;
import com.lib.service.RegisterService;

@RestController
@RequestMapping("/auth")
public class AuthorizationController {

    private final RegisterService registerService;

    public AuthorizationController(RegisterService registerService) {
        this.registerService = registerService;
    }
    
    @PostMapping("/join")
    public ResponseEntity<String> join(@RequestBody UserDto dto) {
        try {
//            registerService.join(dto.getEmail(), dto.getPassword());
            registerService.join(dto);
            return ResponseEntity.ok("회원가입이 완료되었습니다.");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("회원가입에 실패했습니다. " + e.getMessage());
        }
    }
}
