package top.shmly.system.repair.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.shmly.system.repair.entity.RepairAdvice;
import top.shmly.system.repair.mapper.RepairAdviceMapper;
import top.shmly.system.repair.service.RepairAdviceService;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.18 下午5:37
 */
@Service
@Transactional
public class RepairAdviceServiceImpl extends ServiceImpl<RepairAdviceMapper,RepairAdvice> implements RepairAdviceService {

}
