package com.digitizeads.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.digitizeads.modal.Category;

public class CategoryMapper extends Category implements RowMapper<Category> {

	@Override
	public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
		Category category = new Category();
		category.setCategoryId(rs.getInt("CATEGORY_ID"));
		category.setName(rs.getString("CAT_NAME"));
		category.setIcon(rs.getString("CAT_ICON"));
		category.setImage(rs.getString("CAT_IMAGE"));
		category.setStatus(rs.getInt("STATUS"));
		return category;
	}

}
