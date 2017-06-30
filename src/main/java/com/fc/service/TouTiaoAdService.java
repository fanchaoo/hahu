package com.fc.service;

import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fc.mapper.TouTiaoAdMapper;
import com.fc.model.TouTiaoAdClickRecord;

@Service
public class TouTiaoAdService {

	@Autowired
	public TouTiaoAdMapper touTiaoAdMapper;

	

	public void insertClickRecord(String adid, String cid, String mac, Integer os, String timestamp, String convertId,
			String callbackUrl, String idfa, String imei, String androidid) {

		// 如果数据库有该手机的记录，则不再插入
		if (os.equals(1)) {
			int count = touTiaoAdMapper.selectCountByIdfa(idfa);
			if (count >= 1) {
				return;
			}
		} else if (os.equals(0)) {
			int count = touTiaoAdMapper.selectCountByImei(imei);
			if (count >= 1) {
				return;
			}
		}

		TouTiaoAdClickRecord record = new TouTiaoAdClickRecord();
		record.setAdid(adid);
		record.setCid(cid);
		record.setMac(mac);
		record.setOs(os);
		record.setTimestamp(timestamp);
		record.setConvertId(convertId);
		record.setCallbackUrl(callbackUrl);
		record.setIdfa(idfa);
		record.setImei(imei);
		record.setAndroidid(androidid);

		

		touTiaoAdMapper.insertClickRecord(record);

	}

}
