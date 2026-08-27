package com.controller;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControllerOperations {

    JdbcTemplate jdbcTemplate;

    ControllerOperations(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @PostMapping("/employee/update/{id}")
    public String updateView(@PathVariable("id") String id,
            @RequestParam("name") String name,
            @RequestParam("department") String department,
            @RequestParam("salary") float salary) {
        int val = jdbcTemplate.update(
                "UPDATE employee SET name = ?, department = ?, salary = ? WHERE id = ?", name, department, salary, id);
        return "redirect:/employees";
    }

    @GetMapping("/employee/delete/{id}")
    public String deleteView(@PathVariable("id") String id) {
        int val = jdbcTemplate.update(
                "DELETE FROM employee WHERE id = ?", id);
        return "redirect:/employees";
    }

    @GetMapping("/employee/add")
    public String createView() {
        return "add-employee";
    }

    @PostMapping("/employee/added")
    public String addEmployee(
            @RequestParam("name") String name,
            @RequestParam("department") String department,
            @RequestParam("salary") float salary) {

        jdbcTemplate.update(
                "INSERT INTO employee (name, department, salary) VALUES (?, ?, ?)",
                name, department, salary);

        return "redirect:/employees";
    }

}
