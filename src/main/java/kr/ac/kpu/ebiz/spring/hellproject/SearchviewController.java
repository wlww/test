package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by User on 2015-05-27.
 */
@Controller
@RequestMapping("/search")
public class SearchviewController {

    @Autowired
    ActorRepository actorRepository;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView world() {
        ModelAndView mav = new ModelAndView("/searchview");
        mav.addObject("actors", actorRepository.selectAll());
        return mav;
    }
}
