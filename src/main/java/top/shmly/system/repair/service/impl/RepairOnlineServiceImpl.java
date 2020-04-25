package top.shmly.system.repair.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.shmly.system.repair.entity.RepairOnline;
import top.shmly.system.repair.mapper.RepairOnlineMapper;
import top.shmly.system.repair.service.RepairOnlineService;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.18 下午5:37
 */
@Service
@Transactional
public class RepairOnlineServiceImpl extends ServiceImpl<RepairOnlineMapper,RepairOnline> implements RepairOnlineService {

}
