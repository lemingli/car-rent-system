package org.car.util;

import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.SpringSecurityMessageSource;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class CustomerAuthenticationProvider implements AuthenticationProvider {

//  private static final Logger logger = LoggerFactory.getLogger(CustomerAuthenticationProvider.class);

  CustomerUserService userDetailsService;

  // 该方法为了直接或者xml配置的key-value
  public void setUserDetailsService(CustomerUserService userDetailsService) {
    this.userDetailsService = userDetailsService;
  }

  @Override
  public Authentication authenticate(Authentication authentication) throws AuthenticationException {

//    System.out.println("用户输入的用户名是：" + authentication.getName());
//    System.out.println("用户输入的密码是：" + authentication.getCredentials());

    // 根据用户输入的用户名获取该用户名已经在服务器上存在的用户详情，如果没有则返回null
    UserDetails userDetails =  this.userDetailsService.loadUserByUsername(authentication.getName());

    if( userDetails == null ){
      throw new UsernameNotFoundException("该邮箱未注册！");
    }

    try{
//      System.out.println("服务器上已经保存的用户名是：" + userDetails.getUsername());
//      System.out.println("服务器上保存的该用户名对应的密码是： " + userDetails.getPassword());
//      System.out.println("服务器上保存的该用户对应的权限是：" + userDetails.getAuthorities());

//      MessageSourceAccessor messages = SpringSecurityMessageSource.getAccessor();
      if( !userDetails.isEnabled() ){

        throw new LockedException("请先激活邮箱！");

      }

      if (SpringSecurityUtil.macthes(authentication.getCredentials().toString(), userDetails.getPassword()) && userDetails.isEnabled()) {
//        System.out.println("author success");
        //如果验证通过，将返回一个UsernamePasswordAuthenticaionToken对象
        return new UsernamePasswordAuthenticationToken(userDetails,
                authentication.getCredentials(), userDetails.getAuthorities());
      }else{
        throw new LockedException("密码错误！");
      }

    }catch (Exception e){
      System.out.println("author failed, the error message is: " + e);
      throw e;
    }
    //如果验证不通过将抛出异常或者返回null
//    return null;
  }

  public Authentication authenticateAPPUser(Authentication authentication) throws AuthenticationException {

    return new UsernamePasswordAuthenticationToken(authentication.getPrincipal(),
            authentication.getCredentials(), authentication.getAuthorities());
    //如果验证不通过将抛出异常或者返回null
//    return null;
  }

  @Override
  public boolean supports(Class<?> authentication) {
    return true;
  }

}
