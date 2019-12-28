package org.car.service;
import com.alibaba.fastjson.JSONObject;
import org.car.domain.User;
import org.car.domain.UserInfo;
import org.car.domain.UserRegisterInfo;

import java.util.List;

public interface UserService {
    int checkEmail( String email );

    int checkUserName ( String user_name);

    JSONObject register(UserRegisterInfo userRegisterInfo);

    int validateEmail(String user_email, String validate_code);

    UserInfo getUserByUserID(long user_id);

    int addUserAvatars(String avatarName);

    int updateUserProfile(String user_profile_json);

    int updateUserBasicInfo(String user_basic_info_json);



}
