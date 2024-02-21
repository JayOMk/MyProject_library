package com.lib.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {
	
    @GetMapping("/ResearchBook")
    public String showResearchBookPage() {
        return "ResearchBook"; // ResearchBook.jsp를 반환합니다.
    }
}
