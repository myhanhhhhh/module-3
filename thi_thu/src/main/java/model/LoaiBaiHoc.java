package model;

public class LoaiBaiHoc {
    private int id;
    private String styleName;

    public LoaiBaiHoc() {
    }

    public LoaiBaiHoc(int id, String styleName) {
        this.id = id;
        this.styleName = styleName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStyleName() {
        return styleName;
    }

    public void setStyleName(String styleName) {
        this.styleName = styleName;
    }
}
