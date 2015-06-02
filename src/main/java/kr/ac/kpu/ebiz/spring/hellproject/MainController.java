package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by User on 2015-05-27.
 */
@Controller
@RequestMapping("/main")
public class MainController {

    @Autowired
    FilmService filmService;

    @RequestMapping(method = RequestMethod.GET)
    protected ModelAndView handleRequestInternal(HttpServletRequest request,
                                                 HttpServletResponse response) throws Exception {

        //request 객체의 파라미터값을 꺼내서
        String searchTitle = request.getParameter("searchTitle");
        String searchActor = request.getParameter("searchActor");

        //객체에 저장한다.
        SearchCriteria searchCriteria = new SearchCriteria();
        searchCriteria.setSearchTitle(searchTitle);
        searchCriteria.setSearchActor(searchActor);

        List<Map> filmlist = filmService.getAllFilms(searchCriteria);

        ModelAndView modelview = new ModelAndView();
        modelview.addObject("filmlist", filmlist);
        modelview.addObject("searchCriteria", searchCriteria);
        modelview.setViewName("search");

        return modelview;
    }

}
