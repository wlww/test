package kr.ac.kpu.ebiz.spring.hellproject;

/**
 * Created by User on 2015-06-01.
 */
public class SearchCriteria {
    private String searchTitle;
    private String searchActor;

    public String getSearchActor() {
        return searchActor;
    }

    public String getSearchTitle() {
        return searchTitle;
    }

    public void setSearchTitle(String searchTitle) {
        this.searchTitle = searchTitle;
    }

    public void setSearchActor(String searchActor) {
        this.searchActor = searchActor;
    }
}
