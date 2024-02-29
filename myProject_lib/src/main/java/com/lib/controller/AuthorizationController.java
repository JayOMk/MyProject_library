package com.lib.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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
            registerService.join(dto.getEmail(), dto.getPassword());
            return ResponseEntity.ok("join success");
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
}
