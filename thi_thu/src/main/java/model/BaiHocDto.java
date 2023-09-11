package model;

public class BaiHocDto {
    private int id;
    private String title;
    private int module;
    private int level;
    private String link;
    private String styleName;

    public BaiHocDto() {
    }
    public BaiHocDto(int id, String title, int module, int level, String link, String styleName) {
        this.id = id;
        this.title = title;
        this.module = module;
        this.level = level;
        this.link = link;
        this.styleName = styleName;
    }

    public BaiHocDto(String title, int module, int level, String link, String styleName) {
        this.title = title;
        this.module = module;
        this.level = level;
        this.link = link;
        this.styleName = styleName;
    }
//    public BaiHocDto(int id, String title, String link, String styleName) {
//        this.id = id;
//        this.title = title;
//        this.link = link;
//        this.styleName = styleName;
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getStyleName() {
        return styleName;
    }

    public void setStyleName(String styleName) {
        this.styleName = styleName;
    }

    public int getModule() {
        return module;
    }

    public void setModule(int module) {
        this.module = module;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }
}
