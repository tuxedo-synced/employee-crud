package com.controller;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.model.Employee;
import com.rowmapper.EmployeeRowMapper;
import java.util.List ;

@Controller
public class ControllerDisplay {
    JdbcTemplate jdbcTemplate;

    ControllerDisplay(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping("/employees")
    public String listEmployees(Model model){
        RowMapper<Employee> employeeRowMapper = new EmployeeRowMapper();
        List<Employee> details = jdbcTemplate.query("SELECT * FROM EMPLOYEE", employeeRowMapper);
        model.addAttribute("entireDetails",details);
        System.out.println(details);
        return "employee-details";
    }

    @GetMapping("/employees/{id}")
    public String singleEmployee(@PathVariable("id") String id ,Model model){
        RowMapper<Employee> employRowMapper = new EmployeeRowMapper();
        Employee detail = jdbcTemplate.queryForObject("SELECT * FROM EMPLOYEE WHERE ID = ?", employRowMapper , id);
        model.addAttribute("empDetail",detail);
        return "single-employee-detail";
    }

}
