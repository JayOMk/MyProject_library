package com.lib.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lib.dao.*;
import com.lib.dto.*;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("BookService") // 사용 인터페이스 이름
public class BookServiceImpl implements BookService{
	
	@Autowired
	private SqlSession sqlSession;
	
    @Override
    public BookDto getBookDetailByIsbn(String isbn) {
        // ISBN을 기반으로 책의 상세 정보를 가져옵니다.
        BookDto bookDetail = new BookDto();
        bookDetail.setIsbn(isbn);
        bookDetail.setImage("image");
        bookDetail.setTitle("title");
        bookDetail.setAuthor("author");
        bookDetail.setPublisher("publisher");
        bookDetail.setPubdate("pubdate");
        bookDetail.setDescription("description");
        return bookDetail;
    }


    @Override
    public void addBook(BookDto book) {
        BookDao dao = sqlSession.getMapper(BookDao.class);
        dao.addBook(book);
    }

    @Override
    public void deleteBook(int seqNo) {
        BookDao dao = sqlSession.getMapper(BookDao.class);
        dao.deleteBook(seqNo);
    }

	@Override
	public List<BookDto> searchByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> searchByAuthor(String author) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> getAllBooks() {
		// TODO Auto-generated method stub
		return null;
	}
}
