package com.korea.param;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vo.PersonVO;

@Controller
public class ParamController {

	public static final String VIEW_PATH = "/WEB-INF/views/person/";
	
	@RequestMapping("/insert_form.do")
	public String insert() {
		return VIEW_PATH + "insert_form.jsp";
	}
	
	@RequestMapping("insert1.do")
	public String insert1(Model model, String name, int age, String tel) {
		// name, age, tel이 파라미터로 자동으로 넘어온다
		
		PersonVO vo = new PersonVO(name, age, tel);
		model.addAttribute("vo", vo);
		
		return VIEW_PATH + "insert_result.jsp";
	}
	
	@RequestMapping("insert2.do")
	public String insert2(Model model, PersonVO vo) {
		model.addAttribute("vo", vo);
		return VIEW_PATH + "insert_result.jsp";
	}
}
