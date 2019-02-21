package co.grandcircus.SPRINGLAB;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.SPRINGLAB.dao.ItemsDao;
import co.grandcircus.SPRINGLAB.dao.UserDao;


@Controller
public class CoffeeController {
@Autowired 
private UserDao userDao;
private ItemsDao itemsDao;
	@RequestMapping("/")
	public ModelAndView showHome() {
		ModelAndView mav = new ModelAndView("index");
		return mav;

	}
	@RequestMapping("/register")
	public ModelAndView showRegs() {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("num1", "hello");
		return  mav;
		
	}
	@RequestMapping("/AddUser")	
	public ModelAndView showUser(User user) {
		ModelAndView mav = new ModelAndView("/AddUser");
		mav.addObject("firstName",user.getFirstName());
		userDao.create(user);
		return mav;
		
	}	
	@RequestMapping("/items")	
	public ModelAndView showItems(Items items) {
		ModelAndView mav = new ModelAndView("/items");
		mav.addObject("name",items.getName());
		itemsDao.create(items);
		return mav;
	}
}


