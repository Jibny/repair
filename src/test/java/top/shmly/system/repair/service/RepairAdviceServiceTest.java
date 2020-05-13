package top.shmly.system.repair.service;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.entity.RepairAdvice;

import java.util.Random;


@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class RepairAdviceServiceTest {

    @Autowired
    private RepairAdviceService repairAdviceService;

    @Test
    void saveTest() {
//        RepairAdvice repairAdvice = new RepairAdvice();
//        repairAdvice.setScore(99);
//        repairAdvice.setContext("好评");
//        repairAdviceService.save(repairAdvice);
//        System.out.println(repairAdvice.getId());//1252625052478873601L

        for (int i = 0; i < 10; i++) {
            Random random = new Random();
            RepairAdvice repairAdvice = new RepairAdvice();
            repairAdvice.setScore(random.nextInt(20)+80);
            repairAdvice.setContext("默认好评");
            repairAdviceService.save(repairAdvice);
            System.out.println(repairAdvice.getId());
        }
    }

}