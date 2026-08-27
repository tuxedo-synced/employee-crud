package com.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.model.UserDetails;

public class RowMapperImple implements RowMapper<UserDetails> {

    @Override
    public UserDetails mapRow(ResultSet rs, int rowNum) throws SQLException {

        UserDetails userDetails = new UserDetails();

        userDetails.setId(rs.getInt("id"));
        userDetails.setFullName(rs.getString("full_name"));
        userDetails.setUsername(rs.getString("username"));
        userDetails.setEmail(rs.getString("email"));
        userDetails.setPassword(rs.getString("password"));

        return userDetails;
    }
}