package org.car.domain;

public class UserRegisterInfo {
    private long user_id;
    private String user_name;
    private String user_password;
    private String user_created_time;
    private String user_email;
    private String user_phone;
    private String validation_code;
    private int enabled;

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_created_time() {
        return user_created_time;
    }

    public void setUser_created_time(String user_created_time) {
        this.user_created_time = user_created_time;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getValidation_code() {
        return validation_code;
    }

    public void setValidation_code(String validation_code) {
        this.validation_code = validation_code;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }
}
