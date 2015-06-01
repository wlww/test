package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/aaaa")
public class SearchController {

	@Autowired
	ActorRepository actorRepository;
	FilmRepository filmRepository;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView world() {
		ModelAndView mav = new ModelAndView("/search");
		mav.addObject("actors", actorRepository.selectAll());
		mav.addObject("films", filmRepository.selectAll());
		return mav;
	}

}
