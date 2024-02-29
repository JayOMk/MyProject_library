package com.lib;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.lib", "com.lib.service"})
public class MyProjectLibApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyProjectLibApplication.class, args);
	}

}
