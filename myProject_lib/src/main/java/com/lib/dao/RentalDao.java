package com.lib.dao;

import org.apache.ibatis.annotations.Mapper;

import com.lib.dto.RentalDto;

@Mapper
public interface RentalDao {
	public void addRental(RentalDto rentalDto);
}
