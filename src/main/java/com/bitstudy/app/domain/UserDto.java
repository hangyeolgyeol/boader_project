package com.bitstudy.app.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
@ToString
public class UserDto {
    private String id;
    private String pw;
    private String name;
    private String address;
    private String phone_number;
    private String email;

    private String year;
    private String month;
    private String day;
    private String brith;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date reg_date;

    public UserDto() {}

    public UserDto(String id, String pw, String name, String address, String phone_number, String email, String brith, Date reg_date) {
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.address = address;
        this.phone_number = phone_number;
        this.email = email;
        this.brith = year + "-" + month + "-" + day;
        this.reg_date = reg_date;
    }
}
