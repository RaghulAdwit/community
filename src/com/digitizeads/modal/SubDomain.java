package com.digitizeads.modal;

public class SubDomain {

	private int subDomainId;
	private String name;
	private String logoUrl;
	private String subdomainURL;
	private String footerText;
	private String headerText;
	private String bannerImageURL;
	private int status;

	public int getSubDomainId() {
		return subDomainId;
	}

	public void setSubDomainId(int subDomainId) {
		this.subDomainId = subDomainId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLogoUrl() {
		return logoUrl;
	}

	public void setLogoUrl(String logoUrl) {
		this.logoUrl = logoUrl;
	}

	public String getSubdomainURL() {
		return subdomainURL;
	}

	public void setSubdomainURL(String subdomainURL) {
		this.subdomainURL = subdomainURL;
	}

	public String getFooterText() {
		return footerText;
	}

	public void setFooterText(String footerText) {
		this.footerText = footerText;
	}

	public String getHeaderText() {
		return headerText;
	}

	public void setHeaderText(String headerText) {
		this.headerText = headerText;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getBannerImageURL() {
		return bannerImageURL;
	}

	public void setBannerImageURL(String bannerImageURL) {
		this.bannerImageURL = bannerImageURL;
	}

	@Override
	public String toString() {
		return "SubDomain [subDomainId=" + subDomainId + ", name=" + name + ", logoUrl=" + logoUrl + ", subdomainURL="
				+ subdomainURL + ", footerText=" + footerText + ", headerText=" + headerText + ", bannerImageURL="
				+ bannerImageURL + ", status=" + status + ", getSubDomainId()=" + getSubDomainId() + ", getName()="
				+ getName() + ", getLogoUrl()=" + getLogoUrl() + ", getSubdomainURL()=" + getSubdomainURL()
				+ ", getFooterText()=" + getFooterText() + ", getHeaderText()=" + getHeaderText() + ", getStatus()="
				+ getStatus() + ", getBannerImageURL()=" + getBannerImageURL() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}
