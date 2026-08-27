package com.controller;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.UserDetails;
import com.rowmapper.RowMapperImple;

@Controller
public class ControllerLogin {

    JdbcTemplate jdbcTemplate;

    ControllerLogin(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping("/login")
    public String loginView() {
        return "login";
    }

    @GetMapping("/register")
    public String registerView() {
        return "register";
    }

    @PostMapping("/login-validate")
    public String loginValidateView(
            @RequestParam("username") String username,
            @RequestParam("password") String password) {
        try {
            RowMapperImple rowMapperImple = new RowMapperImple();
            UserDetails userDetails = jdbcTemplate.queryForObject(
                    "SELECT * FROM USER_DETAILS WHERE USERNAME = ? AND PASSWORD = ?", rowMapperImple, username,
                    password);
            return "employee-home";
        } catch (Exception e) {
            return "redirect:/login";
        }
    }

    @PostMapping("/register-validate")
    public String registerValidateView(
            @RequestParam("fullName") String fullName,
            @RequestParam("username") String username,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword) {
        try {
            if (!password.equals(confirmPassword)) {
                return "register";
            }

            Integer count = jdbcTemplate.queryForObject(
                    "SELECT COUNT(*) FROM user_details WHERE username = ?",
                    Integer.class,
                    username);

            if (count != null && count > 0) {
                return "register";
            }

            jdbcTemplate.update(
                    "INSERT INTO user_details (full_name, username, email, password) VALUES (?, ?, ?, ?)",
                    fullName,
                    username,
                    email,
                    password);

            return "employee-home";

        } catch (Exception e) {
            return "register";
        }
    }

}
