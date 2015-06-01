package kr.ac.kpu.ebiz.spring.hellproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by User on 2015-06-01.
 */
@Service
public class FilmServiceImpl implements FilmService {

    @Autowired
    FilmRepository filmRepository;

    public List<Map> getAllFilms(SearchCriteria searchCriteria) {
        return filmRepository.selectByCriteria(searchCriteria);
    }

}
