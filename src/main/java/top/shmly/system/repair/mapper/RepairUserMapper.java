package top.shmly.system.repair.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import top.shmly.system.repair.entity.RepairUser;

import java.util.List;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.17 下午11:48
 */
@Repository
@Mapper
public interface RepairUserMapper extends BaseMapper<RepairUser> {

    //@Select("select * from rsp_repair_user ${ew.customSqlSegment}")
    List<RepairUser> selectAll(@Param(Constants.WRAPPER) Wrapper<RepairUser> wrapper);

}
