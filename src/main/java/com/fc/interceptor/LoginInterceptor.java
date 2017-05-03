package com.fc.interceptor;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private JedisPool jedisPool;

	private List<String> excludedUrls;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		String requestUri = request.getRequestURI();

		// 是否需要拦截
		for (String s : excludedUrls) {
			if (requestUri.endsWith(s)) {
				return true;
			}
		}
		String loginToken = null;
		// 是否有cookie
		Cookie[] cookies = request.getCookies();
		if (ArrayUtils.isEmpty(cookies)) {
			request.getRequestDispatcher("toLogin").forward(request, response);
			return false;
		} else {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("loginToken")) {
					loginToken = cookie.getValue();
					break;
				}
			}
		}

		// cookie中是否有loginToken
		if (StringUtils.isEmpty(loginToken)) {
			request.getRequestDispatcher("toLogin").forward(request, response);
			return false;
		}

		Jedis jedis = jedisPool.getResource();
		String userId = jedis.get(loginToken);

		// 根据loginToken是否能从redis中获取userId
		if (StringUtils.isEmpty(userId)) {
			request.getRequestDispatcher("toLogin").forward(request, response);
			return false;
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
	}

	public List<String> getExcludedUrls() {
		return excludedUrls;
	}

	public void setExcludedUrls(List<String> excludedUrls) {
		this.excludedUrls = excludedUrls;
	}

}
