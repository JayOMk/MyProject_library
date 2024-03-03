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
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
import com.lib.dto.RentalDto;
import com.lib.service.BookService;
import com.lib.service.RentalService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private RentalService rentalService;
	
	@GetMapping("/main")
	public String test() {
		return "main";
	}
	
	@GetMapping("/searchForm")
	public String showNaverSearch() {
	    // 검색 폼으로 이동
	    return "searchForm";
	}
	
	@GetMapping("/api")
	public String api(@RequestParam("query") String query, Model model) throws IOException {
	    // 네이버 API를 사용하여 책 검색을 수행하고 검색 결과를 가져오는 메소드

	    // 네이버 API 호출을 위한 클라이언트 ID와 시크릿 키
	    String clientId = "kZStdc88ZP0XFAcoSEv3";
	    String clientSecret = "M0Y3L0JJVZ";

	    // 검색어를 UTF-8로 인코딩
	    String text = query;
	    try {
	        text = URLEncoder.encode(text, "UTF-8");
	    } catch (UnsupportedEncodingException e) {
	        throw new RuntimeException("인코딩 실패", e);
	    }

	    // 네이버 책 검색 API 호출 URL 구성
	    String apiUrl = "https://openapi.naver.com/v1/search/book?query=" + text;

	    // 네이버 API 요청 헤더 설정
	    Map<String, String> requestHeaders = new HashMap<>();
	    requestHeaders.put("X-Naver-Client-Id", clientId);
	    requestHeaders.put("X-Naver-Client-Secret", clientSecret);

	    // 네이버 API 호출 및 응답 데이터 가져오기
	    String responseBody = get(apiUrl, requestHeaders);

	    // 로그에 검색 결과 출력
	    log.info("@# 책 검색 결과====>>>" + responseBody);

	    // 검색 결과를 파싱하여 BookDto 객체의 리스트로 변환
	    List<BookDto> searchResults = parseSearchResults(responseBody);

	    // 검색 결과를 모델에 추가하여 뷰로 전달
	    model.addAttribute("searchResults", searchResults);

	    // searchForm.jsp로 이동
	    return "searchForm";
	}
	
	// 검색 결과를 파싱하여 BookDto 객체의 리스트로 반환하는 메소드
	public List<BookDto> parseSearchResults(String responseBody) throws IOException {
	    // 파싱된 검색 결과를 담을 리스트 생성
	    List<BookDto> searchResults = new ArrayList<>();

	    // Jackson ObjectMapper를 사용하여 JSON 문자열을 객체로 변환
	    ObjectMapper objectMapper = new ObjectMapper();
	    try {
	        // JSON 문자열을 JsonNode로 변환
	        JsonNode jsonNode = objectMapper.readTree(responseBody);

	        // 필요한 데이터 추출
	        JsonNode itemsNode = jsonNode.get("items");
	        if (itemsNode != null && itemsNode.isArray()) {
	            // 각 책 정보를 순회하며 필요한 데이터 추출
	            for (JsonNode itemNode : itemsNode) {
	                String image = itemNode.get("image").asText("");
	                String title = itemNode.get("title").asText();
	                String author = itemNode.get("author").asText("");
	                String description = itemNode.get("description").asText();
	                String publisher = itemNode.get("publisher").asText();
	                String pubdate = itemNode.get("pubdate").asText();
	                String isbn = itemNode.get("isbn").asText();

	                // 검색 결과를 BookDto 객체로 생성하여 리스트에 추가
	                BookDto book = new BookDto(image, title, author, description, publisher, pubdate, isbn);
	                searchResults.add(book);
	            }
	        }
	    } catch (JsonProcessingException e) {
	        // JSON 파싱 예외 처리
	        e.printStackTrace();
		}

	    // 검색 결과 리스트 반환
	    return searchResults;
	}

	private static String get(String apiUrl, Map<String, String> requestHeaders){
	    // 외부 API에 GET 요청을 보내고 응답을 반환하는 메소드

	    // API에 연결하기 위한 HttpURLConnection 객체 생성
	    HttpURLConnection con = connect(apiUrl);
	    try {
	        // GET 요청 설정
	        con.setRequestMethod("GET");

	        // 요청 헤더 설정
	        for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
	            con.setRequestProperty(header.getKey(), header.getValue());
	        }

	        // 응답 코드 확인
	        int responseCode = con.getResponseCode();
	        if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 응답인 경우
	            // 응답 본문을 읽어서 문자열로 반환
	            return readBody(con.getInputStream());
	        } else { // 오류 응답인 경우
	            // 오류 응답 본문을 읽어서 문자열로 반환
	            return readBody(con.getErrorStream());
	        }
	    } catch (IOException e) {
	        // API 요청과 응답 실패 시 예외 처리
	        throw new RuntimeException("API 요청과 응답 실패", e);
	    } finally {
	        // 연결 종료
	        con.disconnect();
	    }
	}
	
	// API에 연결하는 메소드
	private static HttpURLConnection connect(String apiUrl){
	    try {
	        // API URL로부터 HttpURLConnection 객체 생성하여 반환
	        URL url = new URL(apiUrl);
	        return (HttpURLConnection)url.openConnection();
	    } catch (MalformedURLException e) {
	        // 잘못된 API URL 예외 처리
	        throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
	    } catch (IOException e) {
	        // 연결 실패 예외 처리
	        throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
	    }
	}


	// API 응답 본문을 읽어서 문자열로 반환하는 메소드
	private static String readBody(InputStream body){
	    // API 응답 본문을 읽어서 문자열로 반환하는 메소드

	    // InputStream을 InputStreamReader로 변환하여 BufferedReader로 읽음
	    try (BufferedReader lineReader = new BufferedReader(new InputStreamReader(body))) {
	        // 응답 본문을 저장할 StringBuilder 객체 생성
	        StringBuilder responseBody = new StringBuilder();

	        // 한 줄씩 읽어서 responseBody에 추가
	        String line;
	        while ((line = lineReader.readLine()) != null) {
	            responseBody.append(line);
	        }

	        // 완성된 응답 본문을 문자열로 반환
	        return responseBody.toString();
	    } catch (IOException e) {
	        // 읽기 실패 예외 처리
	        throw new RuntimeException("API 응답을 읽는 데 실패했습니다.", e);
	    }
	}
	    
		// 상세 페이지 메소드
	    @GetMapping("/bookDetailPage/{isbn}")
	    public String showBookDetail(@PathVariable String isbn, Model model) {
	        // 네이버 Open API에 접근하기 위한 클라이언트 정보 설정
	        String clientId = "kZStdc88ZP0XFAcoSEv3";
	        String clientSecret = "M0Y3L0JJVZ";

	        try {
	            // 책의 ISBN을 사용하여 네이버 책 검색 API를 호출하기 위한 URL 생성
	            String apiURL = "https://openapi.naver.com/v1/search/book_adv.json?d_isbn=" + isbn;
	            
	            // API 요청 헤더 설정
	            Map<String, String> requestHeaders = new HashMap<>();
	            requestHeaders.put("X-Naver-Client-Id", clientId);
	            requestHeaders.put("X-Naver-Client-Secret", clientSecret);
	            
	            // API 호출 및 응답 받아오기
	            String responseBody = get(apiURL, requestHeaders);

	            // 응답 데이터를 분석하여 책의 상세 정보를 가져옴
	            BookDto bookDetail = parseBookDetail(responseBody);
	            
	            // 모델에 책의 상세 정보를 추가하여 뷰로 전달
	            model.addAttribute("bookDetail", bookDetail);
	        } catch (Exception e) {
	            // 예외 처리
	            e.printStackTrace();
	        }

	        // 책 상세 정보 페이지로 이동
	        return "bookDetailPage";
	    }

	    // 상세 정보를 파싱하는 메서드
	    private BookDto parseBookDetail(String responseBody) throws IOException {
	        // 책의 상세 정보를 저장할 BookDto 객체 생성
	        BookDto bookDetail = new BookDto();
	        
	        // Jackson ObjectMapper를 사용하여 JSON 응답 데이터를 처리
	        ObjectMapper objectMapper = new ObjectMapper();
	        try {
	            // JSON 문자열을 JsonNode로 변환
	            JsonNode jsonNode = objectMapper.readTree(responseBody);
	            
	            // 필요한 정보 추출
	            JsonNode itemsNode = jsonNode.get("items").get(0);
	            String image = itemsNode.get("image").asText("");
	            String title = itemsNode.get("title").asText();
	            String author = itemsNode.get("author").asText("");
	            String description = itemsNode.get("description").asText();
	            String publisher = itemsNode.get("publisher").asText();
	            String pubdate = itemsNode.get("pubdate").asText();
	            String isbn = itemsNode.get("isbn").asText();
	            
	            // 책의 상세 정보를 BookDto 객체에 저장
	            bookDetail.setImage(image);
	            bookDetail.setTitle(title);
	            bookDetail.setAuthor(author);
	            bookDetail.setDescription(description);
	            bookDetail.setPublisher(publisher);
	            bookDetail.setPubdate(pubdate);
	            bookDetail.setIsbn(isbn);
	        } catch (JsonProcessingException e) {
	            // 예외 처리
	            e.printStackTrace();
	        }
	        
	        // 완성된 BookDto 객체 반환
	        return bookDetail;
	    }
	
//    @GetMapping("/books")
//    public String getAllBooks(Model model) {
//        List<RealBookDto> books = bookService.getAllBooks();
//        model.addAttribute("books", books);
//        return "booksPage"; // booksPage.jsp로 이동
//    }
	
	
	@GetMapping("/searchByTitle")
	public String searchByTitle(@RequestParam("title") String title, Model model) {
	    // 제목으로 도서를 검색하는 로직을 구현하세요.
	    // BookService의 적절한 메서드를 호출하여 검색 결과를 가져옵니다.
	    List<BookDto> searchResults = bookService.searchByTitle(title);
	    model.addAttribute("searchResults", searchResults);
	    return "searchForm"; // 검색 결과를 보여주는 페이지로 이동
	}

	@GetMapping("/searchByAuthor")
	public String searchByAuthor(@RequestParam("author") String author, Model model) {
	    // 저자로 도서를 검색하는 로직을 구현하세요.
	    // BookService의 적절한 메서드를 호출하여 검색 결과를 가져옵니다.
	    List<BookDto> searchResults = bookService.searchByAuthor(author);
	    model.addAttribute("searchResults", searchResults);
	    return "searchForm"; // 검색 결과를 보여주는 페이지로 이동
	}
	
	@PostMapping("/rental")
	public String rentBook(@ModelAttribute("rentalDto") RentalDto rentalDto, Model model) {
	    try {
	        // 대출 정보를 받아와 데이터베이스에 저장하는 로직 구현
	        rentalService.addRental(rentalDto); // rentalService 인스턴스를 사용하여 메서드 호출
	        model.addAttribute("message", "책 대출이 완료되었습니다.");
	    } catch (Exception e) {
	        // 대출 정보 저장 중 예외 발생 시 처리
	        e.printStackTrace();
	        model.addAttribute("errorMessage", "책 대출에 실패했습니다. 다시 시도해주세요.");
	    }
	    // 적절한 뷰 페이지로 리다이렉트
	    return "redirect:/main";
	}
}

