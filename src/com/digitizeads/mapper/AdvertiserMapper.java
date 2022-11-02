package com.digitizeads.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.digitizeads.modal.Advertiser;
import com.digitizeads.modal.Category;

public class AdvertiserMapper implements RowMapper<Advertiser> {

	private DataSource dataSource;
	JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public Advertiser mapRow(ResultSet rs, int rowNum) throws SQLException {

		Advertiser advertiser = new Advertiser();
		advertiser.setAdvertiserId(rs.getInt("ADVERTISER_ID"));
		advertiser.setName(rs.getString("NAME"));
		advertiser.setLogo(rs.getString("LOGO"));
		CategoryMapper categoryMapper = new CategoryMapper();
		advertiser.setCategory(categoryMapper);
		advertiser.setLatitude(rs.getString("LATITUDE"));
		advertiser.setLongitude(rs.getString("LONGITUDE"));
		advertiser.setAddress(rs.getString("ADDRESS"));
		advertiser.setPhoneNumber(rs.getString("PHONE_NO"));
		advertiser.setEmail(rs.getString("EMAIL"));
		advertiser.setWebsite(rs.getString("WEBSITE"));
		advertiser.setAboutUs(rs.getString("ABOUT_US"));
		advertiser.setUrlSlug(rs.getString("URL_SLUG"));
		advertiser.setFeaturedImage(getFeaturedBusinessSingleImage(rs.getInt("ADVERTISER_ID")));
		advertiser.setStatus(rs.getInt("STATUS"));
		SubDomainMapper subDomainMapper = new SubDomainMapper();
		advertiser.setSubDomain(subDomainMapper);
		advertiser.setFeatured(rs.getBoolean("IS_FEATURED"));
		advertiser.setFeaturedVideo(rs.getString("FEATURED_VIDEO"));
		advertiser.setFbLink(rs.getString("FB_LINK"));
		advertiser.setTwitterLink(rs.getString("TWITTER_LINK"));
		advertiser.setInstagramHandleName(rs.getString("INSTAGRAM_HANDLE"));
		return advertiser;
	}

	public String getFeaturedBusinessSingleImage(int advertiserId) {

		String featuredImageURL = null;

		String query = "SELECT IMAGE_NAME FROM t_advertiser_gallery WHERE ADVERTISER_ID=? AND STATUS=1 ORDER BY rand() LIMIT 1";
		try {

			Object[] params = new Object[] { advertiserId };

			featuredImageURL = (String) jdbcTemplate.queryForObject(query, params, new RowMapper<String>() {
				public String mapRow(ResultSet rs, int rowNum) throws SQLException {

					return rs.getString("IMAGE_NAME");

				}
			});
		} catch (EmptyResultDataAccessException e) {
			System.out.println(e);
		} catch (Exception e) {
			System.out.println(e);
		}

		return featuredImageURL;

	}

}
