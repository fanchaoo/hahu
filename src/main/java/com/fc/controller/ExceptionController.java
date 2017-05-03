package com.fc.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionController {

	@ExceptionHandler({ Exception.class })
	public ModelAndView handlerException(Exception ex) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("prompt/error");
		mv.addObject("error", ex);
		return mv;
	}

}
