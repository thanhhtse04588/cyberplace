package com.capstone.cyberplace;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class CyberplaceApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(CyberplaceApplication.class, args);
	}
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(CyberplaceApplication.class);
    }

}
