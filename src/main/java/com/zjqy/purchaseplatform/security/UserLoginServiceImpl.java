package com.zjqy.purchaseplatform.security;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.zjqy.purchaseplatform.domain.Account;

@Component("userLoginService")
public class UserLoginServiceImpl implements UserDetailsService {
	private Logger logger = Logger.getLogger(getClass());

	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		UserLogin userLogin =  null;  
        if(username != null && !"".equals(username) && username.indexOf("@") > 0){  
              userLogin = UserLoginDao.findByEmail(username);  
//              username = userLogin.getNick();  
        }else{  
            userLogin = UserLoginDao.findByNick(username);  
        }  
        
        if(userLogin == null){
        	throw new UsernameNotFoundException("用户不存在");
        }
        
        if(logger.isDebugEnabled()){
        	logger.debug("user type ---"+userLogin);
        }
        
        String userType = userLogin.getUserType();  
        List<GrantedAuthority> resultAuths = new ArrayList<GrantedAuthority>();  
  
        // 供应商 
//        if (Account.TYPE_SUPPLIER.equals(userType)) {  
//            resultAuths.add(new SimpleGrantedAuthority("ROLE_SUPPLIER"));  
//        } else if(Account.TYPE_PURCHASE.equals(userType)) {  
//            resultAuths.add(new SimpleGrantedAuthority("ROLE_PURCHASE"));  
//        } else if(Account.TYPE_PM.equals(userType)) {  
//            resultAuths.add(new SimpleGrantedAuthority("ROLE_PM"));  
//        } else if(Account.TYPE_ADMIN.equals(userType)) {  
//        	resultAuths.add(new SimpleGrantedAuthority("ROLE_ADMIN"));  
//        } else {
//        	
//        }
        
        if(userType != null && !"".equals(userType.trim())){
        	resultAuths.add(new SimpleGrantedAuthority("ROLE_" + userType));  
        }
          
        return new WrappedUserLogin(userLogin, resultAuths);
	} 

}
