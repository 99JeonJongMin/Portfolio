package cs.dit.service;

import java.util.List;

import cs.dit.domain.BoardVO;

public interface BoardService {
	
	public List<BoardVO> getList();
	
	public List<BoardVO> getList2();
	
	public int register(BoardVO board);
	
	
	public BoardVO get();
	
	public int modify(BoardVO board);
	
	public int remove(Long Bno);

	public BoardVO get(Long bno);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
