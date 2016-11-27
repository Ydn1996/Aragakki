package cn.com.libsys.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.libsys.model.Books;
import cn.com.libsys.model.Page;
import cn.com.libsys.service.BookService;


@Controller
@RequestMapping("/books")
public class BookController extends BaseController{
	
	@Resource
	private BookService bookService;
	
	@RequestMapping(value="/insertBooks",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> insertBooks(Books book,String typesort){
		if(typesort.equals("1")){try {
			bookService.insert(book);
			return returnMap(0, "", null);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return returnMap(1,"error",null);
		}
		
		}else if(typesort.equals("2")){
			bookService.update(book);
			return returnMap(0,"",null);
		}
		return returnMap(1,"",null);
		
	}
	
	
	@RequestMapping(value="/deleteBooks",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> deleteBooks(Books book,Page page){
		bookService.delete(book.getId());
		return getBooks("", page);
	}
	
	
	@RequestMapping(value="/editBooks",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> editBooks(Books book){
		book=bookService.findByid(book.getId());
		return returnMap(0, "", book);
		
	}
	
	
	@RequestMapping(value="/getBooks",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getBooks(
			@RequestParam(value = "keyword", required = true) String keyword,
			Page page){
		Books book=new Books();
		book.setName(keyword);
		Page pageObj = new Page();
		pageObj = bookService.findByParameterToPage(book, page);
		return returnMap(0, "", pageObj);
	}
	

}
