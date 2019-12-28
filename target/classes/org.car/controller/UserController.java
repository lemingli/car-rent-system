package org.car.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.car.domain.UserInfo;
import org.car.domain.UserRegisterInfo;
import org.car.service.CodeService;
import org.car.service.UserService;
import org.car.util.imageUtil;
import org.car.util.SpringSecurityUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


/**
 * 用户登录注册等操作的controller
 *
 */

@Controller
public class UserController {

    @Resource
    private UserService userService;

    @Resource
    private CodeService codeService;



    @RequestMapping("user/getUserBasicInfo")
    public @ResponseBody JSONObject getUserBasicInfo( long user_id ){
        return JSON.parseObject(JSON.toJSONString(userService.getUserByUserID(user_id)));
    }

    @RequestMapping("/register/validating/email")
    public @ResponseBody int emailValidating( String user_email ){

        return userService.checkEmail(user_email);
    }

    @RequestMapping("/register/validating/username")
    public @ResponseBody int userNameValidating( String user_name ){

        return userService.checkUserName(user_name);
    }

    @RequestMapping("/register/activate")
    public ModelAndView userNameValidating( String userEmail, String validateCode ){

        int validateReturnCode = userService.validateEmail(userEmail, validateCode);

//        if( validateReturnCode == 1 ){
            return new ModelAndView("redirect:/signin?signin_message=1");
//    }
// else{
//            return new ModelAndView("redirect:/register");
//        }

    }

    /*********
     * 邮箱激活后登录跳转到此处，在这里做个重定向
     * **************/
    @RequestMapping("/register/login")
    public ModelAndView registerLogin() {
        return profileDetail(SpringSecurityUtil.getUserID());
    }

    @RequestMapping("/register/create")
    public @ResponseBody JSONObject register(@RequestBody UserRegisterInfo userRegisterInfo){
        return userService.register(userRegisterInfo);
    }


    @RequestMapping("/checkUserAndPassword")
    public @ResponseBody int checkLogin(String user_login_info){
        System.out.println(user_login_info);
        return 0;
    }

    //我的首页
    @RequestMapping("/myinfo")
    public ModelAndView myInfo(){
        return personalProfileInfo(SpringSecurityUtil.getUserID());
    }

    //个人用户信息首页
    @RequestMapping("/user/{user_id}/profile")
    public ModelAndView personalProfileInfo(@PathVariable long user_id){

        ModelAndView modelAndView = new ModelAndView();

        modelAndView = getUserRelatedInfo(modelAndView, user_id);
        modelAndView.setViewName("user/profile");
        return modelAndView;
    }



    //个人详细资料
    @RequestMapping("/user/{user_id}/profile/detail")
    public ModelAndView profileDetail(@PathVariable long user_id){

        ModelAndView modelAndView = new ModelAndView();

        modelAndView = getUserRelatedInfo(modelAndView, user_id);

        modelAndView.setViewName("user/profile_detail");
        return modelAndView;
    }


    @RequestMapping("/update_user_profile")
    public @ResponseBody int updateUserProfile( String user_profile ){

        return userService.updateUserProfile(user_profile);

    }

    @RequestMapping("/update_user_basic_info")
    public @ResponseBody int updateUserBasicInfo( String user_basic_info ){

        return userService.updateUserBasicInfo(user_basic_info);

    }

    @RequestMapping("/forgetPassword")
    public ModelAndView forgetPassword(){

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("user/forgetPassword");
        return modelAndView;
    }

    @RequestMapping("/users/upload_avatars")
    public @ResponseBody String uploadUserAvatars(HttpServletRequest request){

        JSONObject jsonObject = JSON.parseObject(imageUtil.upload(request,"/resources/avatars"));
        userService.addUserAvatars(jsonObject.getString("file_name"));
        return jsonObject.toJSONString();

    }

    private ModelAndView getUserRelatedInfo( ModelAndView modelAndView, long user_id ){

        UserInfo userInfo = userService.getUserByUserID(user_id);
        if( userInfo.getUser_province() != null ) {

            modelAndView.addObject("provinceID", Integer.valueOf(userInfo.getUser_province()));
            modelAndView.addObject("cityID", Integer.valueOf(userInfo.getUser_city()));

            userInfo.setUser_province(codeService.getProvinceNameByID(Integer.valueOf(userInfo.getUser_province())));
            userInfo.setUser_city(codeService.getCityNameByID(Integer.valueOf(userInfo.getUser_city())));
        }

        modelAndView.addObject("currentUser", SpringSecurityUtil.getUsername());
        modelAndView.addObject("provinces",codeService.getProvinceCode());

        return modelAndView;

    }




}
