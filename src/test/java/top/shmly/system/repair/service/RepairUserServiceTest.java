package top.shmly.system.repair.service;

import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.RepairApplication;
import top.shmly.system.repair.entity.RepairUser;

import java.util.Random;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class RepairUserServiceTest {

    @Autowired
    private RepairUserService repairUserService;

    @Test
    void addTest() {
        RepairUser repairUser = new RepairUser();
        repairUser.setNumber(16100000L);
        repairUser.setName("张三");
        repairUser.setUsername("zhansan");
        repairUser.setPassword("123456");
        repairUser.setAddress("西十三");
        repairUser.setTelephone("18011112222");
        repairUser.setEmail("123456789@qq.com");
        //repairUserService.add(repairUser);
        repairUser.insert();
        System.out.println(repairUser.getId());//1254024673235238914

    }

    @Test
    void saveDataTest() {
        long number = 16102101L;
        int index = 1;
        int name = 1;
        Random random = new Random();
        for (int i = 0; i < 66; i++) {
            RepairUser repairUser = new RepairUser();
            repairUser.setNumber(number++);
            repairUser.setName("学生" + index++);
            repairUser.setUsername("stuUser" + name++);
            repairUser.setPassword("123456");
            repairUser.setAddress("西" + (random.nextInt(4) + 9));
            repairUser.setTelephone("18011112222");
            repairUser.setEmail("123456789@qq.com");
            repairUserService.save(repairUser);
            System.out.println(repairUser.getId());
        }
    }

}