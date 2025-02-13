package com.java.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class lmageConfig implements WebMvcConfigurer{
	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// * 은 전부, **은 모든 디렉토리 안에 모든 것을 의미
		registry.addResourceHandler("/images/**")
		.addResourceLocations("file:///c:/upload/");
	}
}
