package com.CRM.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.nio.charset.Charset;
import java.util.List;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/registration").setViewName("registration");
        registry.addViewController("/login").setViewName("login");

        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/add-student").setViewName("add-student");
        registry.addViewController("/list-students").setViewName("list-students");
        registry.addViewController("/branch").setViewName("branch");
        registry.addViewController("/student-info").setViewName("student-info");
        registry.addViewController("/payments").setViewName("payments");
        registry.addViewController("/visits").setViewName("visits");
        registry.addViewController("/groups").setViewName("groups");
        registry.addViewController("/branch-info").setViewName("branch-info");


//        registry.addViewController("/admin").setViewName("admin");
//        registry.addViewController("/user").setViewName("user");
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        StringHttpMessageConverter stringHttpMessageConverter = new StringHttpMessageConverter(Charset.forName("UTF-8"));
        converters.add(stringHttpMessageConverter);
    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        registry.viewResolver(resolver);
    }
}