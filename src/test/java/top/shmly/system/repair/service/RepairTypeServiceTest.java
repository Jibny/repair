package top.shmly.system.repair.service;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.entity.RepairType;


@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class RepairTypeServiceTest {

    @Autowired
    private RepairTypeService repairTypeService;

    @Test
    void saveTest() {
//        RepairType repairType = new RepairType();
//        repairType.setCategory("水电");
//        repairType.setDescription("阳台水管,宿舍墙壁插座等");
//        repairTypeService.save(repairType);
//        System.out.println(repairType.getId());//1252624640195649537L

        int index = 0;
        int encode = 20001;
        for (int i = 0; i < 20; i++) {
            RepairType repairType = new RepairType();
            repairType.setEncode(""+encode);
            repairType.setCategory("分类"+index++);
            index--;
            repairType.setDescription("分类描述,维修分类等"+index++);
            repairTypeService.save(repairType);
            System.out.println(repairType.getId());
        }
    }

}