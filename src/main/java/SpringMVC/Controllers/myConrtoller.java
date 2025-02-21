package SpringMVC.Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import SpringMVC.Dao.ProductDao;
import SpringMVC.pojo.Product;

@Controller
public class myConrtoller {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home() {
	
		return"index";
	}
	
	@RequestMapping("/add")
	public String CreateMapping(Model model) {
		model.addAttribute("title", "Create Product");
		return"addPage";
	}


	@RequestMapping("/show")
	public String displayMapping(@ModelAttribute Product product,Model model) {
		model.addAttribute("title", "Display Prodcut");
		List<Product> products =productDao.getProduct(product);
		model.addAttribute("product", products);
		return"Display";
	}
	@PostMapping("/saveProduct")
	public RedirectView saveProduct(@ModelAttribute Product product,HttpServletRequest request) {
		productDao.CreateProduct(product);
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath()+"/add");
		return view;
	}
}
