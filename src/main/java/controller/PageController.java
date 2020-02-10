package controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("page")
public class PageController {
	
	@RequestMapping("main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("search")
	public ModelAndView search() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("write")
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("info")
	public ModelAndView info() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("agree")
	public ModelAndView agree() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("write2")
	public ModelAndView write2() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}