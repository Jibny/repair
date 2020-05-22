package top.shmly.system.repair.service;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.entity.RepairRepairman;

import java.util.Arrays;
import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class RepairRepairmanServiceTest {

    @Autowired
    private RepairRepairmanService repairRepairmanService;

    @Test
    void getEmails() {
        String category = "水管";
        List<RepairRepairman> emails = repairRepairmanService.getEmails(category);
        System.out.println(Arrays.asList(emails));
    }

    @Test
    void saveTest() {
        RepairRepairman repairRepairman = new RepairRepairman();
        repairRepairman.setNumber(20200000L);
        repairRepairman.setName("维修人员");
        repairRepairman.setUsername("repairman");
        repairRepairman.setPassword("123456");
        repairRepairman.setCategory("水电");
        repairRepairman.setAddress("马尾区XXX路xxx号");
        repairRepairman.setTelephone("18011112222");
        repairRepairman.setEmail("123456@qq.com");
        repairRepairmanService.save(repairRepairman);
        System.out.println(repairRepairman.getId());//1254023749053898753L
    }

    @Test
    void saveDataTest() {
        long number = 20200000L;
        int index = 1;
        for (int i = 0; i < 36; i++) {
            RepairRepairman repairRepairman = new RepairRepairman();
            repairRepairman.setNumber(++number);
            repairRepairman.setName("维修员"+index++);
            index--;
            repairRepairman.setUsername("repairman"+index++);
            repairRepairman.setPassword("123456");
            repairRepairman.setCategory("水电");
            repairRepairman.setAddress("马尾区XXX路xxx号");
            repairRepairman.setTelephone("18011112222");
            repairRepairman.setEmail("123456@qq.com");
            repairRepairmanService.save(repairRepairman);
            System.out.println(repairRepairman.getId());
        }


    }

}