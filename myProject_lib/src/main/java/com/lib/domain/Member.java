package com.lib.domain;

import jakarta.persistence.*;
import org.springframework.security.crypto.password.PasswordEncoder;

@Entity
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true)
    private String email;
    private String password;
    private String roles;

    private Member(Long id, String email, String password, String roleUser) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.roles = roleUser;
    }

    protected Member() {}

    public static Member createUser(String email, String password, PasswordEncoder passwordEncoder) {
        return new Member(null, email, passwordEncoder.encode(password), "USER");
    }

    public Long getId() {
        return id;
    }

    public String getUserid() {
        return email;
    }

    public String getPw() {
        return password;
    }

    public String getRoles() {
        return roles;
    }
}
