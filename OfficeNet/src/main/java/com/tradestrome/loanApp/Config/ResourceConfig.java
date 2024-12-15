package com.tradestrome.loanApp.Config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class ResourceConfig implements WebMvcConfigurer {
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry
		        .addResourceHandler("/images/**")
		        .addResourceLocations("file:resources/","file:uploads/","file:C:\\OfficeNet\\CustomerMasterDocs\\")
		        .setCachePeriod(0);
		}	
}
