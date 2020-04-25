package top.shmly.system.repair.config;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.SimpleAccountRealm;
import org.apache.shiro.subject.Subject;
import org.junit.Before;
import org.junit.Test;

import java.util.Collection;
import java.util.List;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.15 下午8:07
 */
public class QuickStarTest_02 {
    private SimpleAccountRealm simpleAccountRealm = new SimpleAccountRealm();

    private DefaultSecurityManager defaultSecurityManager = new DefaultSecurityManager();

    @Before
    public void init() {
        //初始化数据源
        simpleAccountRealm.addAccount("admin", "123456", "admin");
        simpleAccountRealm.addAccount("root", "123456", "root");

        defaultSecurityManager.setRealm(simpleAccountRealm);
    }

    @Test
    public void AuthenticationTest() {
        SecurityUtils.setSecurityManager(defaultSecurityManager);
        Subject suject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken("root", "123456");
        suject.login(usernamePasswordToken);

        System.out.println("Authentication:　" + suject.isAuthenticated());
        System.out.println("hasRole:　" + suject.hasRole("root"));
        System.out.println("getPrincipal: " + suject.getPrincipal());
        System.out.println("permitted: " + suject.isPermitted());

        suject.logout();
        System.out.println("logout Authentication: " + suject.isAuthenticated());

    }
}
