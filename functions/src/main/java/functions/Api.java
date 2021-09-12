package com.meli.functions;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.meli.functions")
public class Api {

	public static void main(String[] args) {
		SpringApplication.run(Api.class, args);
	}
	 
}
