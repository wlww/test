package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by User on 2015-05-27.
 */
@Controller
@RequestMapping("/searchview")
public class SearchviewController {

    @Autowired
    FilmService filmService;

    @RequestMapping(method = RequestMethod.GET)
    protected ModelAndView handleRequestInternal(HttpServletRequest request,
                                                 HttpServletResponse response) throws Exception {

        String id = request.getParameter("id"); //사원번호

        ModelAndView mav = new ModelAndView();
        mav.addObject("film", filmService.getFilm(id));
        mav.setViewName("searchview");
        return mav;
    }
}
