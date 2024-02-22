package com.lib.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lib.dto.BookDto;
import com.lib.service.BookService;

@RestController
@RequestMapping("/books")
public class BookController {

    @Autowired
    private BookService bookService;

    @GetMapping("/add")
    public String showAddBookForm() {
        return "addBook"; // addBook.jsp로 이동
    }

    @PostMapping("/add")
    public String addBook(BookDto book) {
        bookService.addBook(book);
        return "redirect:/books/add"; // 추가 후 다시 입력 폼으로 리다이렉트
    }

    @GetMapping("/delete")
    public String showDeleteBookForm() {
        return "deleteBook"; // deleteBook.jsp로 이동
    }

    @PostMapping("/delete")
    public String deleteBook(int seqNo) {
        bookService.deleteBook(seqNo);
        return "redirect:/books/delete"; // 삭제 후 다시 삭제 폼으로 리다이렉트
    }
}

