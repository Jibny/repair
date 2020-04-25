package top.shmly.system.repair.service;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.entity.RepairAddress;


@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class RepairAddressServiceTest {

    @Autowired
    private RepairAddressService repairAddressService;

    @Test
    void saveTest() {
//        RepairAddress repairAddress = new RepairAddress();
//        repairAddress.setArea("西区");
//        repairAddress.setDorm("十三");
//        repairAddressService.save(repairAddress);
//        System.out.println(repairAddress.getId());//1252625220544720898L
        int index = 9;
        int encode = 11009;
        for (int i = 0; i < 5; i++) {
            RepairAddress repairAddress = new RepairAddress();
            repairAddress.setEncode(""+encode++);
            repairAddress.setArea("西区");
            repairAddress.setDorm(String.valueOf(index++));
            repairAddressService.save(repairAddress);
            System.out.println(repairAddress.getId());
        }
    }

}