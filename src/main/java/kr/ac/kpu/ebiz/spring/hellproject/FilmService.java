package kr.ac.kpu.ebiz.spring.hellproject;

import java.util.List;
import java.util.Map;

/**
 * Created by User on 2015-06-01.
 */
public interface FilmService {

    List<Map> getAllFilms(SearchCriteria searchCriteria);

}
