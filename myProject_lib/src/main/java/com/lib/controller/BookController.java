package com.lib.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lib.dto.BookDto;
import com.lib.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BookController {
	
	@GetMapping("/searchForm")
	public String showNaverSearch() {
		return "searchForm";
	}
	
	@GetMapping("/api")
	public String api(@RequestParam("query")String query,Model model) {
		String ClientId = "kZStdc88ZP0XFAcoSEv3";
		String ClientSecret = "M0Y3L0JJVZ";
		
		String text = query;
		
		try {
			text =URLEncoder.encode(text,"UTF-8");
			
		}catch (UnsupportedEncodingException e) {
			throw new RuntimeException("인코딩 실패",e);
		}
		
		String apiURL = "https://openapi.naver.com/v1/search/book?query=" + text; 
		
		  Map<String, String> requestHeaders = new HashMap<>();
	        requestHeaders.put("X-Naver-Client-Id", ClientId);
	        requestHeaders.put("X-Naver-Client-Secret", ClientSecret);
	        String responseBody = get(apiURL,requestHeaders);


	       log.info("@# 책 검색 결과====>>>"+responseBody);
	       
	       		   List<BookDto> searchResults = parseSearchResults(responseBody);
	               model.addAttribute("searchResults", searchResults);

	       return "searchForm";
	}
	
	// 검색 결과를 파싱하여 BookDto 객체의 리스트로 반환하는 메서드
	public List<BookDto> parseSearchResults(String responseBody) {
	    List<BookDto> searchResults = new ArrayList<>();

	    // Jackson ObjectMapper를 사용하여 JSON 문자열을 객체로 변환
	    ObjectMapper objectMapper = new ObjectMapper();
	    try {
	        // JSON 문자열을 JsonNode로 변환
	        JsonNode jsonNode = objectMapper.readTree(responseBody);

	        // 필요한 데이터 추출
	        JsonNode itemsNode = jsonNode.get("items");
	        if (itemsNode != null && itemsNode.isArray()) {
	            for (JsonNode itemNode : itemsNode) {
	            	String image = itemNode.get("image").asText("");
	                String title = itemNode.get("title").asText();
	                String author = itemNode.get("author").asText("");
	                String description = itemNode.get("description").asText();
	                String publisher = itemNode.get("publisher").asText();
	                String pubdate = itemNode.get("pubdate").asText();

	                // 검색 결과를 BookDto 객체로 생성하여 리스트에 추가
	                BookDto book = new BookDto(image, title, author, description, publisher, pubdate);
	                searchResults.add(book);
	            }
	        }
	    } catch (JsonProcessingException e) {
	        e.printStackTrace();
	    }

	    return searchResults;
	}

	private static String get(String apiUrl, Map<String, String> requestHeaders){
        HttpURLConnection con = connect(apiUrl);
        try {
            con.setRequestMethod("GET");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }


            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
                return readBody(con.getInputStream());
            } else { // 오류 발생
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }
	 private static HttpURLConnection connect(String apiUrl){
	        try {
	            URL url = new URL(apiUrl);
	            return (HttpURLConnection)url.openConnection();
	        } catch (MalformedURLException e) {
	            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
	        } catch (IOException e) {
	            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
	        }
	    }


	    private static String readBody(InputStream body){
	        InputStreamReader streamReader = new InputStreamReader(body);


	        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
	            StringBuilder responseBody = new StringBuilder();


	            String line;
	            while ((line = lineReader.readLine()) != null) {
	                responseBody.append(line);
	            }


	            return responseBody.toString();
	        } catch (IOException e) {
	            throw new RuntimeException("API 응답을 읽는 데 실패했습니다.", e);
	        }
	    }
	    
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

