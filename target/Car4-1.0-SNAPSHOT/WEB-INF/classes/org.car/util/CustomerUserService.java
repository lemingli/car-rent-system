package org.car.util;

import com.google.common.collect.Lists;
import org.car.dao.UserDao;
import org.car.domain.UserInfo;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;



@Service
public class CustomerUserService implements UserDetailsService {

    @Resource
    private UserDao userDao;
//  private static final Logger logger = LoggerFactory.getLogger(CustomerUserService.class);

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        MyUserDetail detail = null;
        //判断username是否为null
        if(username != null){
            ArrayList<SimpleGrantedAuthority> authorities = Lists.newArrayList();

            System.out.println("user name:"+username);

            UserInfo user_info = userDao.getUserAuthWithAllInformationByEmail(username);
            if( user_info == null ){
                user_info = userDao.getUserAuthWithAllInformationByUsername(username);

            }

            //可以加入其他判断逻辑，以及根据username获取密码的方法。
            //由于是Demo，就直接将密码写死为"TEST"，权限直接设置成"ROLE_ADMIN"、"ROLE_MODELER"和"ROLE_ANALYST"

            if( user_info!=null ) {

                String authority = userDao.getUserAuthoritiesByUserName(username);
                if( authority == null ){
                    authority = userDao.getUserAuthoritiesByUserEmail(username);
                }

                authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
                if(  authority != null && authority.contains("ROLE_ADMIN")){
                    authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
                }

                detail = new MyUserDetail(user_info, true, true, true, authorities);
            }

        }

        return detail;
    }

}