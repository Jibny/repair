package top.shmly.system.repair.config;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.SimpleAccountRealm;
import org.apache.shiro.subject.Subject;
import org.junit.Before;
import org.junit.Test;

    /**
     * @description: 单元测试顺序: @BeforeClass -> @Before -> @Test -> @After -> @AfterClass
     * @author: Jibny
     * @time: 2020.04.15 下午7:05
     */
    public class QuickStartTest_01 {

        private SimpleAccountRealm simpleAccountRealm = new SimpleAccountRealm();

        private DefaultSecurityManager defaultSecurityManager = new DefaultSecurityManager();

        @Before
        public void init() {
            //初始化数据源
            simpleAccountRealm.addAccount("admin", "123456");
            simpleAccountRealm.addAccount("root", "123456");

            defaultSecurityManager.setRealm(simpleAccountRealm);
        }

        @Test
        public void AuthenticationTest() {
            SecurityUtils.setSecurityManager(defaultSecurityManager);

            //获取当前主体
            Subject subject = SecurityUtils.getSubject();

            //输入账号密码
            UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken("root", "123456");
            subject.login(usernamePasswordToken);

            System.out.println("authrentication result: "+subject.isAuthenticated());

        }
    }
