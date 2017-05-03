package com.fc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fc.model.Collection;
import com.fc.service.CollectionService;
import com.fc.service.UserService;
import com.fc.util.Response;

@Controller
@RequestMapping("/")
public class CollectionController {

	@Autowired
	private CollectionService collectionService;
	@Autowired
	private UserService userService;

	@RequestMapping("/collections")
	public String collections() {
		return "collectionList";
	}

	@RequestMapping("/collection/{collectionId}")
	public String collection(@PathVariable Integer collectionId, HttpServletRequest request, Model model) {
		// 当前用户id
		Integer localUserId = userService.getUserIdFromRedis(request);
		// 收藏夹内的答案列表信息
		Map<String, Object> map = collectionService.getCollectionContent(collectionId, localUserId);

		// 获取当前用户收藏夹列表
		List<Collection> collectionList = collectionService.listCreatingCollection(localUserId);

		map.put("collectionList", collectionList);
		model.addAllAttributes(map);
		return "collectionContent";
	}

	@RequestMapping("/addCollection")
	@ResponseBody
	public Response addCollection(Collection collection, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		collectionService.addCollection(collection, userId);
		return new Response(0);
	}

	@RequestMapping("/listCreatingCollection")
	@ResponseBody
	public Response listCreatingCollection(HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		List<Collection> collectionList = collectionService.listCreatingCollection(userId);
		Map<String, Object> map = new HashMap<>();
		map.put("collectionList", collectionList);
		return new Response(0, "", map);
	}

	@RequestMapping("/collectAnswer")
	@ResponseBody
	public Response collectAnswer(Integer collectionId, Integer answerId) {

		collectionService.collectAnswer(collectionId, answerId);
		return new Response(0, "");
	}

	@RequestMapping("/uncollectAnswer")
	@ResponseBody
	public Response uncollectAnswer(Integer collectionId, Integer answerId) {

		collectionService.uncollectAnswer(collectionId, answerId);
		return new Response(0, "");
	}

	@RequestMapping("/collectionContainAnswer")
	@ResponseBody
	public Response collectionContainAnswer(Integer collectionId, Integer answerId) {

		boolean status = collectionService.collectionContainAnswer(collectionId, answerId);
		return new Response(0, "", status);
	}

	@RequestMapping("/judgePeopleFollowCollection")
	@ResponseBody
	public Response judgePeopleFollowCollection(Integer collectionId, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		boolean status = collectionService.judgePeopleFollowCollection(userId, collectionId);
		return new Response(0, "", status);
	}

	@RequestMapping("/followCollection")
	@ResponseBody
	public Response followCollection(Integer collectionId, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		collectionService.followCollection(userId, collectionId);
		return new Response(0, "");
	}

	@RequestMapping("/unfollowCollection")
	@ResponseBody
	public Response unfollowCollection(Integer collectionId, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		collectionService.unfollowCollection(userId, collectionId);
		return new Response(0, "");
	}
}
