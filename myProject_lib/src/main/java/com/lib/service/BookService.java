package com.lib.service;

import com.lib.dto.BookDto;

public interface BookService {
   public void addBook(BookDto book);
   public void deleteBook(int seqNo);
}
