package SpringMVC.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class myConrtoller {

	@RequestMapping("/")
	public String home() {
		return"index";
	}
}
