package top.shmly.system.repair.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import top.shmly.system.repair.entity.RepairAdmin;


@RunWith(SpringRunner.class)
@SpringBootTest
        //(classes = RepairApplication.class)
class RepairAdminServiceTest {

    @Autowired
    private RepairAdminService repairAdminService;

    @Test
    void findByUsernameTest() {
        RepairAdmin repairAdmin = repairAdminService.findByUsername("admin");
        System.out.println(repairAdmin.toString());
    }
    @Test
    void findTest() {
        RepairAdmin repairAdmin = repairAdminService.getOne(new LambdaQueryWrapper<RepairAdmin>().eq(RepairAdmin::getUsername,"Admin"));
        System.out.println(repairAdmin.toString());
    }
}