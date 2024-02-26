package com.lib.dao;

import java.util.List;

import com.lib.dto.BookDto;
import com.lib.dto.RealBookDto;

public interface BookDao {
   public void addBook(BookDto book);
   public void deleteBook(int seqNo);
   public List<RealBookDto> getAllBooks();
   
}
