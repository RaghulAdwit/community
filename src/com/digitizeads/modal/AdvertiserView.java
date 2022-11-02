package com.digitizeads.modal;

public class AdvertiserView {
	private int advertiserViewId;
	private int advertiserId;
	private String trackedOn;
	private String ipAddress;
	private String status;
	private int count;

	public int getAdvertiserViewId() {
		return advertiserViewId;
	}

	public void setAdvertiserViewId(int advertiserViewId) {
		this.advertiserViewId = advertiserViewId;
	}

	public int getAdvertiserId() {
		return advertiserId;
	}

	public void setAdvertiserId(int advertiserId) {
		this.advertiserId = advertiserId;
	}

	public String getTrackedOn() {
		return trackedOn;
	}

	public void setTrackedOn(String trackedOn) {
		this.trackedOn = trackedOn;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
