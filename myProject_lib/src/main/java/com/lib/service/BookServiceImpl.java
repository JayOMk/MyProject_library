package com.lib.service;

import java.util.ArrayList;
import java.util.HashMap;

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
    public void addBook(BookDto book) {
        BookDao dao = sqlSession.getMapper(BookDao.class);
        dao.addBook(book);
    }

    @Override
    public void deleteBook(int seqNo) {
        BookDao dao = sqlSession.getMapper(BookDao.class);
        dao.deleteBook(seqNo);
    }
}
