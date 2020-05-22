package top.shmly.system.repair.service;


import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class IMailServiceTest {

    @Autowired
    private IMailService iMailService;



    @Test
    void sendSimpleMailTest() {
        String to = "964468145@qq.com";
        String subject = "维修处理";
        String context = "您有一条维修申请待处理";
        iMailService.sendSimpleMail(to,subject,context);
    }
}