package com.fc.controller;

import java.io.UnsupportedEncodingException;
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

import com.fc.model.Topic;
import com.fc.service.TopicService;
import com.fc.service.UserService;
import com.fc.util.Response;

@Controller
@RequestMapping("/")
public class TopicController {

	@Autowired
	private TopicService topicService;

	@Autowired
	private UserService userService;

	@RequestMapping("/topic")
	public String topic(Model model) {

		return "topic";
	}

	@RequestMapping("/topics")
	public String topics(Model model) {
		Map<String, Object> map = topicService.listAllTopic();
		model.addAllAttributes(map);
		return "topics";
	}

	@RequestMapping("/listTopicByTopicName")
	public String listTopicByTopicName(String topicName, Model model) throws UnsupportedEncodingException {
		topicName = new String(topicName.getBytes("iso8859-1"), "utf-8");
		Map<String, Object> map = topicService.listTopicByTopicName(topicName);
		model.addAllAttributes(map);
		return "topicList";
	}

	@RequestMapping("/listTopicByParentTopicId")
	@ResponseBody
	public Response listTopicByParentTopicId(Integer parentTopicId) {
		List<Topic> list = topicService.listTopicByParentTopicId(parentTopicId);
		Map<String, Object> map = new HashMap<>();
		map.put("topicList", list);
		return new Response(0, "", map);
	}

	@RequestMapping("/topicDetail/{topicId}")
	public String topicDetail(@PathVariable Integer topicId, Integer page, Boolean allQuestion, Model model, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		Map<String, Object> map = topicService.getTopicDetail(topicId, allQuestion, page, userId);
		model.addAllAttributes(map);
		return "topicDetail";
	}

	@RequestMapping("/judgePeopleFollowTopic")
	@ResponseBody
	public Response judgePeopleFollowTopic(Integer topicId, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		boolean status = topicService.judgePeopleFollowTopic(userId, topicId);
		return new Response(0, "", status);
	}

	@RequestMapping("/followTopic")
	@ResponseBody
	public Response followTopic(Integer topicId, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		topicService.followTopic(userId, topicId);
		return new Response(0, "");
	}

	@RequestMapping("/unfollowTopic")
	@ResponseBody
	public Response unfollowTopic(Integer topicId, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		topicService.unfollowTopic(userId, topicId);
		return new Response(0, "");
	}
}
