package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.BoardService;

// 스프링으로 하여금 해당 클래스가 Controller라는 것을 인식 시키기 위한 Annotation
@Controller
public class BoardController {

	// root-context.xml은 Controller를 제외한 모든 객체를 만듬
	// 즉, Controller는 root-context.xml에서 객체화 불가
	BoardService service;

	public BoardController() {
		System.out.println("--- BoardController()의 생성자 ---");
	}
	
	public void setService(BoardService service) {
		this.service = service;
	}
	
	// 사용자가 요청한 url을 실행하고 결과를 포워딩
	@RequestMapping("/board_list.do")
	public String list(Model model) {
		List list = service.selectList();
		model.addAttribute("list", list);
		return "board_list"; // 포워딩: views/board_list.jsp
	}
	
}
