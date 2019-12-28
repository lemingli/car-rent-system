package org.car.domain;

import java.sql.Date;

public class UserInfo {
    /**
     * 属性
     */
    private long user_id;
    private String user_name;
    private String user_password;
    private Date user_created_time;
    private String user_email;
    private int user_sex;
    private int city_code;
    private String user_address;
    private String user_telephone;
    private Date user_birthday;
    private String user_introduction;
    private String user_province;
    private String user_city;
    private int isVisual;
    private boolean enabled;
    private String user_avatars;
    private int user_sex_orientation;
    private int user_relationships_status;
    private int user_blood_type;

    private String weixin_open_id;
    private boolean isWeiXinBundled;

    /**
     * 构造方法
     */
    public UserInfo(int user_id, String user_name, String user_password,
                    Date user_createDate, String user_email, int user_sex,
                    int city_code, String user_address, String user_telephone,
                    Date user_birthday, String user_introduction,int user_sex_orientation,
                    int user_relationships_status,int user_blood_type) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_password = user_password;
        this.user_created_time = user_createDate;
        this.user_email = user_email;
        this.user_sex = user_sex;
        this.city_code = city_code;
        this.user_address = user_address;
        this.user_telephone = user_telephone;
        this.user_birthday = user_birthday;
        this.user_introduction = user_introduction;
        this.user_sex_orientation=user_sex_orientation;
        this.user_relationships_status=user_relationships_status;
        this.user_blood_type=user_blood_type;

    }
    public UserInfo(){
        super();
    }

    /**
     * set和get方法
     */
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
    public Date getUser_created_time() {
        return user_created_time;
    }
    public void setUser_created_time(Date user_created_time) {
        this.user_created_time = user_created_time;
    }
    public String getUser_email() {
        return user_email;
    }
    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }
    public int getUser_sex() {
        return user_sex;
    }
    public void setUser_sex(int user_sex) {
        this.user_sex = user_sex;
    }
    public int getCity_code() {
        return city_code;
    }
    public void setCity_code(int city_code) {
        this.city_code = city_code;
    }
    public String getUser_address() {
        return user_address;
    }
    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }
    public String getUser_telephone() {
        return user_telephone;
    }
    public void setUser_telephone(String user_telephone) {
        this.user_telephone = user_telephone;
    }
    public Date getUser_birthday() {
        return user_birthday;
    }
    public void setUser_birthday(Date user_birthday) {
        this.user_birthday = user_birthday;
    }
    public String getUser_introduction() {
        return user_introduction;
    }
    public void setUser_introduction(String user_introduction) {
        this.user_introduction = user_introduction;
    }
    public int getIsVisual() {
        return isVisual;
    }
    public void setIsVisual(int isVisual) {
        this.isVisual = isVisual;
    }

    public String getWeixin_open_id() {
        return weixin_open_id;
    }

    public void setWeixin_open_id(String weixin_open_id) {
        this.weixin_open_id = weixin_open_id;
    }

    public boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getUser_avatars() {
        return user_avatars;
    }

    public void setUser_avatars(String user_avatars) {
        this.user_avatars = user_avatars;
    }

    public String getUser_province() {
        return user_province;
    }

    public void setUser_province(String user_province) {
        this.user_province = user_province;
    }

    public String getUser_city() {
        return user_city;
    }

    public void setUser_city(String user_city) {
        this.user_city = user_city;
    }

    public int getUser_sex_orientation() {
        return user_sex_orientation;
    }

    public void setUser_sex_orientation(int user_sex_orientation) {
        this.user_sex_orientation = user_sex_orientation;
    }

    public int getUser_relationships_status() {
        return user_relationships_status;
    }

    public void setUser_relationships_status(int user_relationships_status) {
        this.user_relationships_status = user_relationships_status;
    }

    public int getUser_blood_type() {
        return user_blood_type;
    }

    public void setUser_blood_type(int user_blood_type) {
        this.user_blood_type = user_blood_type;
    }

    public boolean getIsWeiXinBundled() {
        return isWeiXinBundled;
    }

    public void setIsWeiXinBundled(boolean isWeiXinBundled) {
        this.isWeiXinBundled = isWeiXinBundled;
    }
}

