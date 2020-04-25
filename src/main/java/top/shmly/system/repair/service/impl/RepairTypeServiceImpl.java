package top.shmly.system.repair.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.shmly.system.repair.entity.RepairType;
import top.shmly.system.repair.mapper.RepairTypeMapper;
import top.shmly.system.repair.service.RepairTypeService;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.18 下午5:37
 */
@Service
@Transactional
public class RepairTypeServiceImpl extends ServiceImpl<RepairTypeMapper,RepairType> implements RepairTypeService {

}
