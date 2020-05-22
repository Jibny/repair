package top.shmly.system.repair.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.shmly.system.repair.entity.RepairAdmin;
import top.shmly.system.repair.mapper.RepairAdminMapper;
import top.shmly.system.repair.service.RepairAdminService;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.18 下午5:37
 */
@Service
@Transactional
public class RepairAdminServiceImpl extends ServiceImpl<RepairAdminMapper, RepairAdmin> implements RepairAdminService {

    @Autowired
    private RepairAdminMapper repairAdminMapper;

    @Override
    public RepairAdmin findByUsername(String username) {
        return repairAdminMapper.findByUsername(username);
    }
}
