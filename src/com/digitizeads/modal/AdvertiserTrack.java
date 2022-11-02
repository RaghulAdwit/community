package com.digitizeads.modal;

public class AdvertiserTrack {

	private int advertiserTrackId;
	private Advertiser advertiser;
	private int sourceId;
	private String sourceType;
	private String trackedOn;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	private String ipAddress;
	private int status;
	private int count;

	public int getAdvertiserTrackId() {
		return advertiserTrackId;
	}

	public void setAdvertiserTrackId(int advertiserTrackId) {
		this.advertiserTrackId = advertiserTrackId;
	}

	public Advertiser getAdvertiser() {
		return advertiser;
	}

	public void setAdvertiser(Advertiser advertiser) {
		this.advertiser = advertiser;
	}

	public int getSourceId() {
		return sourceId;
	}

	public void setSourceId(int sourceId) {
		this.sourceId = sourceId;
	}

	public String getSourceType() {
		return sourceType;
	}

	public void setSourceType(String sourceType) {
		this.sourceType = sourceType;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "AdvertiserTrack [sourceType=" + sourceType + ", count=" + count + "]";
	}

}
