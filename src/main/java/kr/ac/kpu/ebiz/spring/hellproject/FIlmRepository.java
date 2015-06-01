package kr.ac.kpu.ebiz.spring.hellproject;

import java.util.List;
import java.util.Map;

public interface FilmRepository {

	Map select(Integer filmId);

	List<Map> selectAll();

	boolean delete(int filmId);
}
