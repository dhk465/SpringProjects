package com.korea.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	//실행경로를 참조하는 상수
	public static final String VIEW_PATH = "/WEB-INF/views/test/";
	
	public TestController() {
		
	}
	
	@RequestMapping("/test.do")
	public String test(Model model, HttpServletRequest request) {
		String[] msg = {
				"안녕",
				"Hello",
				"Hallo",
				"Ahoj",
				"Hola",
				"こんにちは",
				"你好"
		};
		
		String ip = request.getRemoteAddr();
		
		model.addAttribute("msg", msg);
		model.addAttribute("ip", ip);
		
		// model.addAttribute()를 통해 바인딩 한 정보도
		// ${ requestScope.msg }와 같은 방식으로 가져올 수 있지만, 실제로 model은
		// request영역을 잠시 빌려서 바인딩을 해 주는 구조이므로, 온전한 request는 아니다.
		
		return VIEW_PATH + "test.jsp";
	}
	
	@RequestMapping("/test2.do")
	public ModelAndView test2() {
		
		//데이터와 View정보를 하나의 객체로 포장해서 전달
		ModelAndView mv = new ModelAndView();
		String[] msg = {
				"안녕",
				"Hello",
				"Hallo",
				"Ahoj",
				"Hola",
				"こんにちは",
				"你好"
		};
		
		mv.addObject("msg", msg);
		mv.addObject("test", "ModelAndView에 저장된 데이터");
		
		mv.setViewName(VIEW_PATH + "test2.jsp");
		
		return mv;
	}
}
