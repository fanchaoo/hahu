package com.fc.model;

public class TouTiaoAdClickRecord {

	private String adid;
	private String cid;
	private String mac;
	private Integer os;
	private String timestamp;
	private String convertId;
	private String callbackUrl;
	private String idfa;
	private String imei;
	private String androidid;

	public String getAdid() {
		return adid;
	}

	public void setAdid(String adid) {
		this.adid = adid;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getMac() {
		return mac;
	}

	public void setMac(String mac) {
		this.mac = mac;
	}

	public Integer getOs() {
		return os;
	}

	public void setOs(Integer os) {
		this.os = os;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	public String getConvertId() {
		return convertId;
	}

	public void setConvertId(String convertId) {
		this.convertId = convertId;
	}

	public String getCallbackUrl() {
		return callbackUrl;
	}

	public void setCallbackUrl(String callbackUrl) {
		this.callbackUrl = callbackUrl;
	}

	public String getIdfa() {
		return idfa;
	}

	public void setIdfa(String idfa) {
		this.idfa = idfa;
	}

	public String getImei() {
		return imei;
	}

	public void setImei(String imei) {
		this.imei = imei;
	}

	public String getAndroidid() {
		return androidid;
	}

	public void setAndroidid(String androidid) {
		this.androidid = androidid;
	}

	@Override
	public String toString() {
		return "TouTiaoAdClickRecord [adid=" + adid + ", cid=" + cid + ", mac=" + mac + ", os=" + os + ", timestamp="
				+ timestamp + ", convertId=" + convertId + ", callbackUrl=" + callbackUrl + ", idfa=" + idfa + ", imei="
				+ imei + ", androidid=" + androidid + "]";
	}

}