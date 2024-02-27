package com.lib.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookDto {
	private String image;
    private String title;
    private String author;
    private String description;
    private String publisher;
    private String pubdate;
    private String isbn;
}
