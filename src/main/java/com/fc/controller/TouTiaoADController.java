package com.fc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.fc.service.TouTiaoAdService;

@Controller
@RequestMapping("/toutiaoad")
public class TouTiaoADController {

	@Autowired
	TouTiaoAdService touTiaoAdService;

	@RequestMapping(value = "/feedback")
	@ResponseBody
	public Object feedback(@RequestParam(value = "adid", required = false) String adid,
			@RequestParam(value = "cid", required = false) String cid,
			@RequestParam(value = "mac", required = false) String mac,
			@RequestParam(value = "os", required = false) Integer os,
			@RequestParam(value = "timestamp", required = false) String timestamp,
			@RequestParam(value = "convert_id", required = false) String convertId,
			@RequestParam(value = "callback_url") String callbackUrl,
			@RequestParam(value = "idfa", required = false) String idfa,
			@RequestParam(value = "imei", required = false) String imei,
			@RequestParam(value = "androidid", required = false) String androidid) {

		touTiaoAdService.insertClickRecord(adid, cid, mac, os, timestamp, convertId, callbackUrl, idfa, imei,
				androidid);

		JSONObject json = new JSONObject();
		json.put("status", 0);
		return json;
	}

}
