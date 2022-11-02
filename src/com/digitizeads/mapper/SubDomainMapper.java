package com.digitizeads.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.digitizeads.modal.SubDomain;

public class SubDomainMapper extends SubDomain implements RowMapper<SubDomain> {

	@Override
	public SubDomain mapRow(ResultSet rs, int rowNum) throws SQLException {
		SubDomain subDomain = new SubDomain();
		subDomain.setSubDomainId(rs.getInt("SUBDOMAIN_ID"));
		subDomain.setName(rs.getString("NAME"));
		subDomain.setLogoUrl(rs.getString("LOGO_URL"));
		subDomain.setSubdomainURL(rs.getString("SUBDOMAIN_URL"));
		subDomain.setFooterText(rs.getString("FOOTER_TEXT"));
		subDomain.setHeaderText(rs.getString("HEADER_TEXT"));
		subDomain.setBannerImageURL(rs.getString("BANNER_IMG_URL"));
		subDomain.setStatus(rs.getInt("STATUS"));
		return subDomain;
	}

}
