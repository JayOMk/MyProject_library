package com.lib.dao;

import com.lib.dto.BookDto;

public interface BookDao {
   public void addBook(BookDto book);
   public void deleteBook(int seqNo);
}
