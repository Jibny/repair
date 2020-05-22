package top.shmly.system.repair.entity;


import com.baomidou.mybatisplus.annotation.SqlCondition;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value = "管理员对象", description = "管理员")
public class RepairAdmin extends Model<RepairAdmin> {

    private static final long serialVersionUID = 1L;
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rsp_repair_user.id
     *
     * @mbggenerated Fri Apr 17 23:30:44 CST 2020
     */
    @ApiModelProperty("管理员主键")
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rsp_repair_user.name
     *
     * @mbggenerated Fri Apr 17 23:30:44 CST 2020
     */
    @TableField(condition = SqlCondition.LIKE)
    @ApiModelProperty("管理员名字")
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rsp_repair_user.username
     *
     * @mbggenerated Fri Apr 17 23:30:44 CST 2020
     */
    @ApiModelProperty("管理员账号")
    private String username;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rsp_repair_user.password
     *
     * @mbggenerated Fri Apr 17 23:30:44 CST 2020
     */
    @ApiModelProperty("管理员密码")
    private String password;
    

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rsp_repair_user.telephone
     *
     * @mbggenerated Fri Apr 17 23:30:44 CST 2020
     */
    @ApiModelProperty("管理员手机")
    private String telephone;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rsp_repair_user.email
     *
     * @mbggenerated Fri Apr 17 23:30:44 CST 2020
     */
    @ApiModelProperty("管理员邮箱")
    private String email;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rsp_repair_user.gmt_create
     *
     * @mbggenerated Fri Apr 17 23:30:44 CST 2020
     */
    @ApiModelProperty("创建时间")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date gmtCreate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rsp_repair_user.gmt_modified
     *
     * @mbggenerated Fri Apr 17 23:30:44 CST 2020
     */
    @ApiModelProperty("更新时间")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date gmtModified;

}