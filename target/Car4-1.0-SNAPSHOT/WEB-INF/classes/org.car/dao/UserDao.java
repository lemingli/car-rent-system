package org.car.dao;

import org.car.domain.*;

public interface UserDao {
    int registerUser(UserRegisterInfo userRegisterInfo);

    int insertUserEmailValidateCode(String user_email, String validate_code, String create_time);

    int validateEmail(String current_time, String user_email, String validate_code);

    int updateUserEmailValidate(String user_email);

    int updateUserEmailValidateTime(String user_email, String current_time);

    String getUserPassword(String user_email);

    //通过邮箱查询用户名、密码和其他用户信息
    UserInfo getUserAuthWithAllInformationByEmail( String user_email);

    UserInfo getUserAuthWithAllInformationByUsername( String user_name);

    UserInfo getUserByEmail(String user_email);

    UserInfo getUserByUserName(String user_name);

    UserInfo getUserByUserID(long user_id );

    int addUserAvatars(long user_id, String avatarName);

    int insertUserProfileInfo(UserRegisterInfo userRegisterInfo);

    int updateUserProfile( UserInfo user_info );

    int updateUserBasicInfo( UserInfo user_info );

    String getUserAuthorities(long user_id);

    String getUserAuthoritiesByUserEmail(String user_email);

    String getUserAuthoritiesByUserName(String user_name);



}
