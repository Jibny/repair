package top.shmly.system.repair.service;

import com.baomidou.mybatisplus.extension.service.IService;
import top.shmly.system.repair.entity.RepairRepairman;

import java.util.List;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.18 上午12:03
 */

public interface RepairRepairmanService extends IService<RepairRepairman> {
    List<RepairRepairman> getEmails(String category);
}
