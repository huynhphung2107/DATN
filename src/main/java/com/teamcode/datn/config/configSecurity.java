package com.teamcode.datn.config;

import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

import java.util.List;

@EnableWebSecurity
public class configSecurity implements WebSecurityConfigurerAdapter{
    @Override
    public List<configSecurity> userDetailsService() {
        return null;
    }
}
