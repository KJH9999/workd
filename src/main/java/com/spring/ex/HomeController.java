package com.spring.ex;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.spring.ex.dto.BoardDTO;
import com.spring.ex.dto.RankingDTO;
import com.spring.ex.dto.UserDTO;
import com.spring.ex.service.RankingService;
import com.spring.ex.service.UserService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	UserService userService;
	
	@Inject
	RankingService rankingService;
	
	private static final Logger logger =
	 LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		List<RankingDTO> benchlist = rankingService.benchlist();
		List<RankingDTO> deadlist = rankingService.deadlist();
		List<RankingDTO> squatlist = rankingService.squatlist();
		List<RankingDTO> totallist = rankingService.totallist();
		model.addAttribute("benchlist", benchlist);
		model.addAttribute("deadlist", deadlist);
		model.addAttribute("squatlist", squatlist);
		model.addAttribute("totallist", totallist);
		
		return "home";
	}
	
	
	
}