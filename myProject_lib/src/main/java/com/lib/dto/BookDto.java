package com.lib.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookDto {
    private int seqNo;
    private String isbnThirteenNo;
    private String vlmNm;
    private String titleNm;
    private String authrNm;
    private String publisherNm;
    private String pblicteDe;
    private String adtionSmblNm;
    private String imageUrl;
    private String bookIntrcnCn;
    private String kdcNm;
    private String titleSbstNm;
    private String authrSbstNm;
    private String twoPblicteDe;
    private String isbnNo;
}
