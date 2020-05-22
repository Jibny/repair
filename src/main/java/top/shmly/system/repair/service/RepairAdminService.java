package top.shmly.system.repair.service;

import com.baomidou.mybatisplus.extension.service.IService;
import top.shmly.system.repair.entity.RepairAdmin;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.18 上午12:03
 */
public interface RepairAdminService extends IService<RepairAdmin> {
    RepairAdmin findByUsername(String username);
}
