package com.lib.service;

import java.util.List;

import com.lib.dto.BookDto;
import com.lib.dto.RealBookDto;

public interface BookService {
   public void addBook(BookDto book);
   public void deleteBook(int seqNo);
   public BookDto getBookDetailByIsbn(String isbn);
   public List<BookDto> getAllBooks();
   public List<BookDto> searchByTitle(String title);
   public List<BookDto> searchByAuthor(String author);
}
