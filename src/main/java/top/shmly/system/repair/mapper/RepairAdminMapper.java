package top.shmly.system.repair.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.shmly.system.repair.entity.RepairAdmin;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.17 下午11:43
 */

@Repository
@Mapper
public interface RepairAdminMapper extends BaseMapper<RepairAdmin> {
    RepairAdmin findByUsername(String username);
}
