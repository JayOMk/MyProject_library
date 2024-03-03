package com.lib.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lib.dao.RentalDao;
import com.lib.dto.RentalDto;

@Service
public class RentalServiceImpl implements RentalService {
	
    @Autowired
    private RentalDao rentalDao;

    @Override
    public void addRental(RentalDto rentalDTO) {
        rentalDao.addRental(rentalDTO);
    }
}
