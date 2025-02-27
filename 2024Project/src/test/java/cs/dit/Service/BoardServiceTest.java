package cs.dit.Service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cs.dit.domain.BoardVO;
import cs.dit.mapper.TestBoard;
import cs.dit.service.BoardService;
import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class) //현재 테스트 코드가 스프링 실행 역할을 할 것이라고 알림
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //설정파일 읽어내기
@Log4j
public class BoardServiceTest {

	@Autowired
	private BoardService service;
	
	@Test
	public void testGEtList() {
		List<BoardVO> list = service.getList();
		for(BoardVO board : list) {
			log.info(board);
		}
	}
	
	@Test
	public void testRegister() {
		
		BoardVO board = new BoardVO();
		board.setContent("안녕");
		board.setTitle("반갑워여");
		board.setWriter("홍귈동");
		log.info("여기는레지스터야 ------------------------------------------------------------------------------");
		log.info(board);
		service.register(board);
	}
	
	
	

		
}
