package top.shmly.system.repair.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.shmly.system.repair.entity.RepairUser;
import top.shmly.system.repair.mapper.RepairUserMapper;
import top.shmly.system.repair.service.RepairUserService;

import javax.management.Query;
import java.util.HashMap;
import java.util.List;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.18 上午12:08
 */
@Service
@Transactional
public class RepairUserServiceImpl extends ServiceImpl<RepairUserMapper,RepairUser> implements RepairUserService {

//    @Autowired
//    private RepairUserMapper repairUserMapper;
//
//    @Override
//    public int add(RepairUser repairUser) {
//        return repairUserMapper.insert(repairUser);
//    }
//
//    @Override
//    public int delete(RepairUser repairUser) {
//        //QueryWrapper<RepairUser> queryWrapper = new QueryWrapper<>();
//        return 0;
//    }
//
//    @Override
//    public List<RepairUser> selectAll() {
//        LambdaQueryWrapper<RepairUser> lambdaQuery = Wrappers.<RepairUser>lambdaQuery();
//        lambdaQuery.likeRight(RepairUser::getName,"张").and(lqw->lqw.isNotNull(RepairUser::getTelephone).or().isNotNull(RepairUser::getEmail));
//        return repairUserMapper.selectAll(lambdaQuery);
//    }
}
