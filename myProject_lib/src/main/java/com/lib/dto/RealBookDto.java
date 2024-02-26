package com.lib.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RealBookDto {
    private int seqNo; // 일련번호
    private String isbnThirteenNo; // ISBN 13번호
    private String isbnNo; // ISBN 번호
    private String kdcNm; // KDC명(장르)
    private String vlmNm; // 권명
    private String titleNm; // 제목명
    private String titleSbstNm; // 제목 대체명(특수기호x)
    private String authrNm; // 저작자명
    private String authrSbstNm; // 저작자 대체명(특수기호x)
    private String publisherNm; // 출판사명
    private String pblicteDe; // 발행일자
    private String twoPblicteDe; // 재발행일자
    private String adtionSmblNm; //부가기호명
    private String imageUrl; // 이미지 URL
    private String bookIntrcnCn; // 도서 소개
}
