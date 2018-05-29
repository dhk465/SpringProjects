package service;

import java.util.List;

import dao.BoardDAO;

public class BoardServiceImp implements BoardService{

	BoardDAO dao;
	
	public BoardServiceImp() {
		
	}
	
	public BoardServiceImp(BoardDAO dao) {
		// dao를 외부에서 생성자인젝션을 통해 받음
		this.dao = dao;
	}

	@Override
	public List selectList() {
		return dao.selectList();
	}

}
