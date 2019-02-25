package co.grandcircus.SPRINGLAB;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.SPRINGLAB.dao.ItemsDao;
import co.grandcircus.SPRINGLAB.dao.UserDao;


@Controller
public class CoffeeController {
@Autowired 
UserDao userDao;
@Autowired
ItemsDao itemsDao;


	@RequestMapping("/")
	public ModelAndView showHome() {
		List<Item>leListofItems=itemsDao.findAll();
		return new ModelAndView("index","items",leListofItems );
	}
	@RequestMapping("/ItemsList")
	public ModelAndView Items() {
		List<Item>leListofItems=itemsDao.findAll();
		return new ModelAndView("Items","items",leListofItems );
	}
		// list of categories needed for <select>
		
	
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
	@RequestMapping("/admin")
	public ModelAndView admin() {
		List<Item>leListofItems=itemsDao.findAll();
		return new ModelAndView("Admin","items",leListofItems );
	}
	@RequestMapping("/editlist")
	public ModelAndView showAddForm() {
		ModelAndView mav = new ModelAndView("Admin_Form");
		return mav;
	}
	@PostMapping("/editItem")
	public ModelAndView submitAddForm(Item item){
		itemsDao.create(item);
		return new ModelAndView("redirect:/admin");
	}
	@RequestMapping("/admin/delete")
	public ModelAndView delete(@RequestParam("id") Long id) {
		itemsDao.delete(id);
		return new ModelAndView("redirect:/admin");
}		
	@RequestMapping("/adminForm")
	public ModelAndView editItem(@RequestParam("id")Long id) {
		ModelAndView mav = new ModelAndView("EditPage");
		mav.addObject("items",itemsDao.findById(id));
		return mav;
	}
	@PostMapping("/adminEdit")
	public ModelAndView submitEditItem(Item item) {
		itemsDao.edit(item);
		return new ModelAndView("redirect:/admin");
	}
}



