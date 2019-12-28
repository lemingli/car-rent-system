package org.car.service.impl;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.car.dao.SysDao;
import org.car.dao.UserDao;
import org.car.domain.User;
import org.car.domain.UserInfo;
import org.car.domain.UserRegisterInfo;
import org.car.service.UserService;
import org.car.util.SpringSecurityUtil;
import org.car.util.ToolUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService{

    @Resource
    private SysDao sysDao;

    @Resource
    private UserDao userDao;

    @Override
    public int checkEmail(String email) {

        String table = "users";
        String field = "user_email";

        return sysDao.queryRowsNumberByParameters(table, field, email);
    }

    @Override
    public int checkUserName(String user_name) {
        String table = "users";
        String field = "user_name";
        return sysDao.queryRowsNumberByParameters(table, field, user_name);
    }

    @Override
    public JSONObject register(UserRegisterInfo userRegisterInfo) {

        userRegisterInfo.setUser_created_time(ToolUtil.getCurrentTime());

        userRegisterInfo.setUser_id(generateID("users","user_id", 10000000));
        userRegisterInfo.setEnabled(0);
        userRegisterInfo.setUser_password(SpringSecurityUtil.encode(userRegisterInfo.getUser_password()));

        int isRegisterSuccessful = userDao.registerUser(userRegisterInfo);
        userDao.insertUserProfileInfo(userRegisterInfo);

        String validateCode = SpringSecurityUtil.encode(ToolUtil.getCurrentTime()+userRegisterInfo.getUser_email());
        int saveValidateCode = userDao.insertUserEmailValidateCode(userRegisterInfo.getUser_email(),validateCode,userRegisterInfo.getUser_created_time());

        if( isRegisterSuccessful==1 && saveValidateCode ==1 ){
            System.out.println("注册成功，发送邮件");

            StringBuffer activateContent = new StringBuffer("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
            activateContent.append("<a href=\"https://www.localgou.com/register/activate?userEmail="+userRegisterInfo.getUser_email()+"&validateCode="+validateCode+"\">");
            activateContent.append("点击激活");
            activateContent.append("</a>");

//            SendEmail.send(userRegisterInfo.getUser_email(),activateContent.toString());
        }

        JSONObject resultJSON = new JSONObject();
        if(isRegisterSuccessful==1 && saveValidateCode ==1 ){
            resultJSON.put("resultCode", 200);
            resultJSON.put("resultMessage", "成功");
            resultJSON.put("resultModel", JSONObject.parseObject(JSON.toJSONString(userRegisterInfo)));
        }else{
            resultJSON.put("resultCode", 500);
            resultJSON.put("resultMessage", "操作出错");
        }

        return resultJSON;

    }



    @Override
    public int validateEmail(String user_email, String validate_code) {

        String current_time = ToolUtil.getCurrentTime();

        int email_validate = userDao.validateEmail( ToolUtil
                .getCurrentTime(), user_email, validate_code);

        if( email_validate == 1 ){
            userDao.updateUserEmailValidateTime(user_email, current_time);
            userDao.updateUserEmailValidate(user_email);
        }

        return email_validate;
    }

    @Override
    public UserInfo getUserByUserID(long user_id) {
        return userDao.getUserByUserID(user_id);
    }

    @Override
    public int addUserAvatars(String avatarName) {

        int isSuccess = userDao.addUserAvatars(SpringSecurityUtil.getUserID(), avatarName);
        if( isSuccess != 0 ){
            SpringSecurityUtil.updateUserPrincipal(userDao.getUserAuthWithAllInformationByUsername(SpringSecurityUtil.getUsername()));
        }
        return userDao.addUserAvatars(SpringSecurityUtil.getUserID(), avatarName);
    }

    @Override
    public int updateUserProfile(String user_profile_json) {

        UserInfo userInfo = JSON.parseObject(user_profile_json, UserInfo.class);
        userInfo.setUser_id(SpringSecurityUtil.getUserID());

        return userDao.updateUserProfile(userInfo);
    }

    @Override
    public int updateUserBasicInfo(String user_basic_info_json) {

        UserInfo userInfo = JSON.parseObject(user_basic_info_json, UserInfo.class);
        userInfo.setUser_id(SpringSecurityUtil.getUserID());

        return userDao.updateUserBasicInfo(userInfo);

    }


    long generateID( String table, String primaryFieldName, long initialID){
        long maxNumber = sysDao.getMaxNumber(table,primaryFieldName);
        if( sysDao.getMaxNumber(table,primaryFieldName)==0 ){
            return initialID;
        }else {
            maxNumber++;
            return maxNumber;
        }
    }
}