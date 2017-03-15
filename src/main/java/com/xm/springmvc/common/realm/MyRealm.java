package com.xm.springmvc.common.realm;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import com.xm.springmvc.blog.domain.Permission;
import com.xm.springmvc.blog.domain.Role;
import com.xm.springmvc.blog.domain.User;
import com.xm.springmvc.blog.service.UserService;

/**
 * 自定义shiro的用户认证的realm;
 * @author TOM XIONG
 * @date 2017年2月27日 下午10:04:21
 */
public class MyRealm extends AuthorizingRealm {

	private UserService userService;
	
	
	/**
	 * 重载获取用户信息的方法;验证用户信息,执行如下操作:
	 * 1、检查提交的进行认证的令牌信息 
     * 2、根据令牌信息从数据源(通常为数据库)中获取用户信息 
     * 3、对用户信息进行匹配验证。 
     * 4、验证通过将返回一个封装了用户信息的AuthenticationInfo实例。 
     * 5、验证失败则抛出AuthenticationException异常信息。 
	 * @author TOM XIONG
	 * @date 2017年2月27日 下午10:11:10
	 */
	 @Override
     protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authToken)
            throws AuthenticationException {
		try{ 
			//获取用户账号
	        //String username = token.getPrincipal().toString() ;
		    UsernamePasswordToken token = (UsernamePasswordToken)authToken;  
		    User user =this.userService.getUserByUserName(token.getUsername()) ;
		    if (user!=null){
		        //将查询到的用户账号和密码存放到 authenticationInfo用于后面的权限判断。第三个参数随便放一个就行了。
		        AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user.getUserName(),user.getPassword(),
		                "auth") ;
		        return authenticationInfo ;
		    }else{
		        return  null ;
		    }
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
     }
	
	
	/**
	 * 重载获取用户权限的方法;
	 * @author TOM XIONG
	 * @date 2017年2月27日 下午10:10:13
	 */
	@Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = principalCollection.getPrimaryPrincipal().toString() ;
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        try{
	        // 根据用户名查询当前用户拥有的角色
	        List<Role> roles = userService.getRolesByUserName(username);
	        Set<String> roleNames = new HashSet<String>();
	        for (Role role : roles) {
	            roleNames.add(role.getRoleName());
	        }
	        // 将角色名称提供给info
	        authorizationInfo.setRoles(roleNames);
	        // 根据用户名查询当前用户权限
	        List<Permission> permissions = userService.getPermissionsByUserName(username);
	        Set<String> permissionNames = new HashSet<String>();
	        for (Permission permission : permissions) {
	            permissionNames.add(permission.getPermissionName());
	        }
	        // 将权限名称提供给info
	        authorizationInfo.setStringPermissions(permissionNames);
        }catch(Exception e){
        	e.printStackTrace();
        }
        return authorizationInfo;
     }

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
}
