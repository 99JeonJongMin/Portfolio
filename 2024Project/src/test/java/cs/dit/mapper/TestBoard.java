package cs.dit.mapper;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import cs.dit.domain.BoardVO;

import cs.dit.domain.BoardVO;
import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class) //현재 테스트 코드가 스프링 실행 역할을 할 것이라고 알림
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //설정파일 읽어내기
@Log4j
public class TestBoard {
	@Autowired
	private BoardMapper mapper;
	
	@Test
	public void tesGetLit() {
		List<BoardVO> list = mapper.getList();
		
		for(BoardVO board : list) {
			log.info(board);
		}
		mapper.getList().forEach(board->log.info(board));
	}
	@Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTitle("목요일");
		board.setContent("주말이 멀지 않았어 !");
		board.setWriter("홍길동");
		int i =mapper.insert(board);
		if(i==1) {
			System.out.println("입력되었습니다! ");
		}
	}
	@Test
	  public void testDelete() {
			BoardVO board = new BoardVO();
			log.info("test/delete------------------");	
			log.info("delete" + board.delete(100));    
			board.delete(100);
			
		  }
	
	 @Test
	 public void testRead() {
		 log.info("read....................");
		 
		 
		 BoardVO board = BoardVO.read(100);
		 log.info(board);

	 }
	

	
	 


	
}
