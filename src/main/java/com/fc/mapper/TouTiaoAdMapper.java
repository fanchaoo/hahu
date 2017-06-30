package com.fc.mapper;

import com.fc.model.TouTiaoAdClickRecord;

public interface TouTiaoAdMapper {

	int selectCountByIdfa(String idfa);

	int selectCountByImei(String imei);

	void insertClickRecord(TouTiaoAdClickRecord record);

}
