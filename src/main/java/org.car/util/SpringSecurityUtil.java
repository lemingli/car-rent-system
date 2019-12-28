package org.car.util;

import org.car.dao.UserDao;
import org.car.domain.UserInfo;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.annotation.Resource;

/**
 * 
 * ClassName: SpringSecurityUtil
 * Function: TODO SpringSerurity工具 
 * Reason: TODO 封装SpringSerurity中常用的方法. 
 * date: 2017-11-23下午6:41:23 

 */
public class SpringSecurityUtil {
  /**
   * 测试
   * 
   * 注册时需要调用encode方法加密密码，调用语句是SpringSecurityUtil.encode(yourRawPassword);
   */
  @Resource
  private static UserDao userDao;

  public static void main(String[] args) {
    String rawPassword = "qwe123456";
    System.out.println(rawPassword + " -> ");
    String encoderPassword = encode(rawPassword);
    System.out.println(encoderPassword);
    System.out.println("密文长度" + encoderPassword.length());

    System.out.println(macthes(rawPassword, "$2a$10$atFNcAizddHFHRrgGlrPm.1DdiaOZe4L1Wir5cgPgik3D2pF/Z7tS"));
  }

  /**
   * BCrypt加密(适用于注册时密码加密)
   * 
   * @param rawPassword 明文密码
   * @return encoderPassword 密文密码
   */
  public static String encode(String rawPassword) {

    // 调用spring security的BCrypt加密
    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    String encoderPassword = encoder.encode(rawPassword);
    return encoderPassword;
  }

  public static boolean macthes(String rawPassword, String encodedPassword) {

    // 调用spring security的BCrypt加密
    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    return encoder.matches(rawPassword, encodedPassword);
  }

  /**
   * 获取当前用户
   *
   * @return username 用户
   */
  public static String getUsername() {

    String username = null;
    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    if (principal instanceof UserDetails) {
      username = ((UserDetails) principal).getUsername();
    } else {
      username = principal.toString();
    }
    return username;
  }

  /********
   * 获取当前用户uid
   * **********/
  public static long getUserID() {

    long uid = 0;
    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    if (principal instanceof MyUserDetail) {
      uid = (((MyUserDetail) principal).getUser_id());
    }

    return uid;
  }

  public static void updateUserPrincipal(UserInfo user_info){

    MyUserDetail userDetails = (MyUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

    userDetails = new MyUserDetail(user_info, true, true, true, userDetails.getAuthorities());

    Authentication authentication = new UsernamePasswordAuthenticationToken(userDetails,
            SecurityContextHolder.getContext().getAuthentication().getCredentials(), userDetails.getAuthorities());
    SecurityContextHolder.getContext().setAuthentication(authentication);
  }

  public static boolean isSignin(){
    if(SecurityContextHolder.getContext().getAuthentication()==null || getUsername().equals("anonymousUser") || getUsername() == null){
      return false;
    } else {
      return true;
    }

  }

}

