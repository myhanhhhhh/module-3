package model;

public class BaiHoc {
    private int id;
    private String title;
    private int module;
    private int level;
    private String link;
    private int styleId;

    public BaiHoc() {
    }

    public BaiHoc(int id, String title, int module, int level, String link, int styleId) {
        this.id = id;
        this.title = title;
        this.module = module;
        this.level = level;
        this.link = link;
        this.styleId = styleId;
    }

    public BaiHoc(String title, int module, int level, String link, int styleId) {
        this.title = title;
        this.module = module;
        this.level = level;
        this.link = link;
        this.styleId = styleId;
    }

    public BaiHoc(String title, String link, int styleId) {
        this.title = title;
        this.link = link;
        this.styleId = styleId;
    }

    public BaiHoc(int id, String title, String link, int styleId) {
        this.id = id;
        this.title = title;
        this.link = link;
        this.styleId = styleId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getStyleId() {
        return styleId;
    }

    public void setStyleId(int styleId) {
        this.styleId = styleId;
    }
}
