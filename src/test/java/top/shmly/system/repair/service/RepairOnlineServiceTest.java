package top.shmly.system.repair.service;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.contant.RepairOnlineStatus;
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
        int userIndex = 1;
        int repairmanIndex = 1;
        RepairOnline repairOnline;
        for (int i = 0; i < 22; i++) {
            repairOnline = new RepairOnline();
            repairOnline.setCategory("报修分类" + random.nextInt(19));  //报修分类
            repairOnline.setArea("阳光学院");   //报修区域
            repairOnline.setDorm("" + (random.nextInt(5) + 9)); //报修地址
            repairOnline.setRoom("" + random.nextInt(3) + "" + random.nextInt(14)); //报修房间
            repairOnline.setUserNumber(userNumber++);   //报修用户学号
            repairOnline.setUserName("学生" + userIndex++);   //报修用户
            repairOnline.setRoom("213");    //报修房间
            repairOnline.setProblem("阳台水管爆裂");  //故障问题
            repairOnline.setImage("https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg");
            repairOnline.setReason("自然损坏"); //故障原因
            repairOnline.setStatus(RepairOnlineStatus.STATUS_APPLICATION);  //报修状态
            repairOnline.setRepairmanName("维修员" + repairmanIndex);  //维修人员
            repairOnline.setRepairmanTelephone("18011112222");  //维修人员联系方式
            repairOnline.setContext("默认好评");    //评价内容
            repairOnline.setScore(random.nextInt(20) + 80); //评价分数
            repairOnline.setGmtCreate(new Date());  //申请时间
            repairOnline.setGmtDeal(DateUtils.getNextDay(new Date()));  //处理时间创建时间下一天
            repairOnline.setGmtModified(DateUtils.getNextDay(DateUtils.getNextDay(new Date())));    //完成时间
            repairOnlineService.save(repairOnline);
            System.out.println(repairOnline.getId());
        }
    }

    @Test
    void saveDatarTest() {
        Random random = new Random();
        Long userNumber = 16102101L;
        Long repairmanNumber = 20200001L;
        int userIndex = 1;
        int repairmanIndex = 1;
        RepairOnline repairOnline = new RepairOnline();
        repairOnline.setCategory("分类" + random.nextInt(19));
        repairOnline.setArea("西区");
        repairOnline.setDorm("" + (random.nextInt(4) + 9));
        repairOnline.setRoom("" + random.nextInt(3) + "" + random.nextInt(14));
        repairOnline.setUserNumber(userNumber++);
        repairOnline.setUserName("学生" + userIndex++);
        repairOnline.setRoom("213");
        repairOnline.setProblem("阳台水管爆裂");
        repairOnline.setImage("https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2902578366,1420588776&fm=26&gp=0.jpg");
        repairOnline.setReason("自然损坏");
        repairOnline.setStatus(RepairOnlineStatus.STATUS_APPLICATION);
        repairOnline.setRepairmanName("维修员" + repairmanIndex);
        repairOnline.setRepairmanTelephone("18011112222");
        repairOnline.setContext("默认好评");
        repairOnline.setScore(random.nextInt(20) + 80);
        repairOnline.setGmtDeal(DateUtils.getNextDay(new Date()));
        repairOnlineService.save(repairOnline);
        System.out.println(repairOnline.getId());
    }
}