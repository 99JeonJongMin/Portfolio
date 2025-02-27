package cs.dit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cs.dit.domain.BoardVO;
import cs.dit.domain.MemberVO;
import cs.dit.mapper.BoardMapper;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private  BoardMapper mapper;
	
	
	
	
	@Override
	public List<BoardVO> getList() {
		
		log.info(mapper.getList());
		
		List<BoardVO> list = mapper.getList();

		
		return list;
	}
	
	@Override
	public List<BoardVO> getList2() {
		
		log.info(mapper.getList2());
		
		List<BoardVO> list = mapper.getList2();

		
		return list;
	}




	@Override
	public int register(BoardVO board) {
		// TODO Auto-generated method stub
		
		
		int i = mapper.insert(board);
		
		
		
		return i;
	}

	


	@Override
	public BoardVO get(Long bno) {
		// TODO Auto-generated method stub
		return mapper.read(bno);
	}




	@Override
	public int modify(BoardVO board) {
		// TODO Auto-generated method stub
		return mapper.update(board);

	}




	@Override
	public int remove(Long bno) {
		// TODO Auto-generated method stub
		return mapper.delete(bno);

	}




	@Override
	public BoardVO get() {
		// TODO Auto-generated method stub
		return null;
	}

}
