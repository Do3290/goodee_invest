package controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import logic.Ms;
import logic.ProjectService;

@RestController
@RequestMapping("help")

public class HelpController {
	
	@RequestMapping("help")
	public ModelAndView help() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("commu")
	public ModelAndView commu() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("terms")
	public ModelAndView terms() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("privacy")
	public ModelAndView privacy() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("cr*")
	public ModelAndView cr() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("section*")
	public ModelAndView section() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("creater")
	public ModelAndView creater() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("support")
	public ModelAndView support() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("common")
	public ModelAndView common() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("comm*")
	public ModelAndView comm() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("sp*")
	public ModelAndView sp() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("message")
	public ModelAndView message(@Valid Ms ms, BindingResult bresult, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
