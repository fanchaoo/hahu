package com.fc.util;

import java.io.IOException;

import org.springframework.stereotype.Service;

import com.qiniu.http.Response;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

@Service
public class QiniuyunUtil {
	// 设置好账号的ACCESS_KEY和SECRET_KEY
	private static String ACCESS_KEY = MyConstant.QINIU_ACCESS_KEY;
	private static String SECRET_KEY = MyConstant.QINIU_SECRET_KEY;
	// 要上传的空间
	private static String BUCKET_NAME = MyConstant.QINIU_BUCKET_NAME;
	// 密钥配置
	private static Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);
	// 创建上传对象
	private static UploadManager uploadManager = new UploadManager();

	// 简单上传，使用默认策略，只需要设置上传的空间名就可以了
	public static String getUpToken() {
		return auth.uploadToken(BUCKET_NAME);
	}

	public static void upload(byte[] localData, String remoteFileName) throws IOException {
		Response res = uploadManager.put(localData, remoteFileName, getUpToken());
		// 打印返回的信息
		System.out.println(res.bodyString());
	}

}
