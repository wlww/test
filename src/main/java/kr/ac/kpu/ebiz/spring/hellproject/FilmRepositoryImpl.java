package kr.ac.kpu.ebiz.spring.hellproject;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class FilmRepositoryImpl extends SqlSessionDaoSupport implements FilmRepository {

    public Map select(Integer filmId) {
        return getSqlSession().selectOne("FilmRepository.select", filmId);
    }

    public List<Map> selectAll() {
        return getSqlSession().selectList("FilmRepository.selectAll");
    }

    public boolean delete(int filmId) {
        return getSqlSession().delete("FilmRepository.delete", filmId) > 0;
    }

    public List<Map> selectByCriteria(SearchCriteria searchCriteria) {
        if (searchCriteria.getSearchTitle() != null) {
            return getSqlSession().selectList("FilmRepository.selectByTitle", searchCriteria.getSearchTitle());
        }

        if (searchCriteria.getSearchActor() != null) {
            return getSqlSession().selectList("FilmRepository.selectByActor", searchCriteria.getSearchActor());
        }

        return new ArrayList();
    }

}
