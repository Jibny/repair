package top.shmly.system.repair.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.shmly.system.repair.entity.RepairRepairman;

@Repository
@Mapper
public interface RepairRepairmanMapper extends BaseMapper<RepairRepairman> {
}
