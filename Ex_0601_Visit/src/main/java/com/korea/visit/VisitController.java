package com.korea.visit;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.VisitDAO;
import mycommon.MyCommon;
import vo.VisitVO;

@Controller
public class VisitController {
	
	VisitDAO visit_dao;
	public void setVisit_dao(VisitDAO visit_dao) {
		this.visit_dao = visit_dao;
	}
	
	// 방명록 목록 보기
	@RequestMapping(value = {"/", "/list.do"})
	public String list(Model model) {
		List<VisitVO> list = visit_dao.selectList();
		model.addAttribute("list", list);
		return MyCommon.Visit.VIEW_PATH + "visit_list.jsp";
	}
	
}
