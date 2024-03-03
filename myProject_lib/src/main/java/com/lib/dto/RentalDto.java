package com.lib.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RentalDto {
    private String username;
    private String email;
    private String phone;
    private String address;
    private String title;
    private String isbn;
    private Timestamp rentalTimestamp;
}
