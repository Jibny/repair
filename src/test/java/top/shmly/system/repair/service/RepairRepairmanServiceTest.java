package top.shmly.system.repair.service;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.entity.RepairRepairman;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class RepairRepairmanServiceTest {

    @Autowired
    public RepairRepairmanService repairRepairmanService;

    @Test
    void getEmails() {
        String category = "水管";
        List<RepairRepairman> emails = repairRepairmanService.getEmails(category);
        System.out.println(Arrays.asList(emails));
    }
}