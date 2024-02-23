package com.lib.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NaverResultDto {
	private String lastBuildDate;
	private int total;
	private int start;
	private int display;
	private List<NaverDto> items;
}
