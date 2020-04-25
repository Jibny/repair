package top.shmly.system.repair.service;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.entity.RepairOnline;
import top.shmly.system.repair.utils.DateUtils;

import java.util.Date;
import java.util.Random;


@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class RepairOnlineServiceTest {

    @Autowired
    private RepairOnlineService repairOnlineService;

    @Test
    void saveTest() {
        Random random = new Random();
        Long userNumber = 16102101L;
        Long repairmanNumber = 20200001L;
        int userIndex = 1;
        int repairmanIndex = 1;
        RepairOnline repairOnline = new RepairOnline();
        repairOnline.setCategory("分类" + random.nextInt(19));
        repairOnline.setArea("西区");
        repairOnline.setDorm("" + (random.nextInt(4) + 9));
        repairOnline.setRoom(""+random.nextInt(3)+""+random.nextInt(14));
        repairOnline.setUserNumber(userNumber++);
        repairOnline.setUserName("学生"+userIndex++);
        repairOnline.setRoom("213");
        repairOnline.setProblem("阳台水管爆裂");
        repairOnline.setImage("https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg");
        repairOnline.setReason("自然损坏");
        repairOnline.setStatus("已经受理");
        repairOnline.setRepairmanName("维修员"+repairmanIndex);
        repairOnline.setRepairmanTelephone("18011112222");
        repairOnline.setContext("默认好评");
        repairOnline.setScore(random.nextInt(20)+80);
        repairOnline.setGmtDeal(DateUtils.getNextDay(new Date()));
        repairOnlineService.save(repairOnline);
        System.out.println(repairOnline.getId());
    }


    @Test
    void saveDataTest() {
        Random random = new Random();
        Long userNumber = 16102101L;
        //Long repairmanNumber = 20200001L;
        int userIndex = 1;
        int repairmanIndex = 1;
        for (int i = 0; i < 22; i++) {
            RepairOnline repairOnline = new RepairOnline();
            repairOnline.setCategory("分类" + random.nextInt(19));
            repairOnline.setArea("西区");
            repairOnline.setDorm("" + (random.nextInt(5) + 9));
            repairOnline.setRoom(""+random.nextInt(3)+""+random.nextInt(14));
            repairOnline.setUserNumber(userNumber++);
            repairOnline.setUserName("学生"+userIndex++);
            repairOnline.setRoom("213");
            repairOnline.setProblem("阳台水管爆裂");
            repairOnline.setImage("https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg");
            repairOnline.setReason("自然损坏");
            repairOnline.setStatus("已经受理");
            repairOnline.setRepairmanName("维修员"+repairmanIndex);
            repairOnline.setRepairmanTelephone("18011112222");
            repairOnline.setContext("默认好评");
            repairOnline.setScore(random.nextInt(20)+80);
            repairOnline.setGmtDeal(DateUtils.getNextDay(new Date()));
            repairOnlineService.save(repairOnline);
            System.out.println(repairOnline.getId());
        }
    }
}