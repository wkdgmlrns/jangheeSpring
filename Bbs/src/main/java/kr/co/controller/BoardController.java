package kr.co.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.inject.Inject;

import org.junit.runners.Parameterized.Parameter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.domain.BoardVO;
import kr.co.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Inject
	BoardService service;
	
	@GetMapping("/list")
	public void getList(Model model) throws Exception {
		
		List<BoardVO> list = null;
		list = service.list();
		
		model.addAttribute("list",list);
	}
	@PostMapping("/list")
	public String getListModify(BoardVO vo) throws Exception {
			service.update(vo);
		return "redirect:/";
	}
	@GetMapping("/write")
	public String getWirte() throws Exception{
		return "board/write";
	}
	@PostMapping("/write")
	public String posttWirte(BoardVO vo) throws Exception{
		service.write(vo);
		return "redirect:/board/list";
	}
	@GetMapping("/view")
	public void getView(@RequestParam("board_id") int board_id, Model model) throws Exception
	{
		BoardVO vo = service.view(board_id);
		model.addAttribute("view",vo);
	}
	@GetMapping("/home")
	public String getHome() 
	{
		return "redirect:/";
	}
	@GetMapping("/modify")
	public void getModify(@RequestParam("board_id") int board_id, Model model) throws Exception{
		BoardVO vo = service.view(board_id);
		model.addAttribute("view",vo);
	}
	@GetMapping("/delete")
	public String delete(@RequestParam("board_id") int board_id) throws Exception {
		service.delete(board_id);
		return "redirect:/";
	}
}
