package model;

public class Employee {
    private int employee_code;
    private String name;
    private String identity_number;
    private String birthday;
    private boolean gender;
    private String phone_number;
    private String email;
    private String account_code;
    private String position_code;

    public Employee() {
    }

    public Employee(String name, String identity_number, String birthday, boolean gender, String phone_number, String email, String account_code, String position_code) {
        this.name = name;
        this.identity_number = identity_number;
        this.birthday = birthday;
        this.gender = gender;
        this.phone_number = phone_number;
        this.email = email;
        this.account_code = account_code;
        this.position_code = position_code;
    }

    public Employee(int employee_code, String name, String identity_number, String birthday, boolean gender, String phone_number, String email, String account_code, String position_code) {
        this.employee_code = employee_code;
        this.name = name;
        this.identity_number = identity_number;
        this.birthday = birthday;
        this.gender = gender;
        this.phone_number = phone_number;
        this.email = email;
        this.account_code = account_code;
        this.position_code = position_code;
    }

    public int getEmployee_code() {
        return employee_code;
    }

    public void setEmployee_code(int employee_code) {
        this.employee_code = employee_code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdentity_number() {
        return identity_number;
    }

    public void setIdentity_number(String identity_number) {
        this.identity_number = identity_number;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAccount_code() {
        return account_code;
    }

    public void setAccount_code(String account_code) {
        this.account_code = account_code;
    }

    public String getPosition_code() {
        return position_code;
    }

    public void setPosition_code(String position_code) {
        this.position_code = position_code;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "employee_code=" + employee_code +
                ", name='" + name + '\'' +
                ", identity_number='" + identity_number + '\'' +
                ", birthday='" + birthday + '\'' +
                ", gender=" + gender +
                ", phone_number='" + phone_number + '\'' +
                ", email='" + email + '\'' +
                ", account_code='" + account_code + '\'' +
                ", position_code='" + position_code + '\'' +
                '}';
    }
}
