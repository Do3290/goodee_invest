package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
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
	@RequestMapping("sp*")
	public ModelAndView sp() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("message")
	public ModelAndView message() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
