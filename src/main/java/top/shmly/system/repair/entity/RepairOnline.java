package top.shmly.system.repair.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value = "在线报修对象", description = "在线报修")
public class RepairOnline implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("报修单主键")
    private Long id;

    @ApiModelProperty("报修分类")
    private String category;

    @ApiModelProperty("区域")
    private String area;

    @ApiModelProperty("宿舍楼")
    private String dorm;


    @ApiModelProperty("房间号")
    private String room;


    @ApiModelProperty("用户学号")
    private Long userNumber;

    @ApiModelProperty("用户名字")
    private String userName;


    @ApiModelProperty("故障描述")
    private String problem;

    @ApiModelProperty("故障图片")
    private String image;

    @ApiModelProperty("故障原因")
    private String reason;

    @ApiModelProperty("报修状态")
    private String status;


    @ApiModelProperty("维修人员名字")
    private String repairmanName;

    @ApiModelProperty("维修人员手机号码")
    private String repairmanTelephone;

    @ApiModelProperty("评价内容")
    private String context;

    @ApiModelProperty("评价分数")
    private Integer score;


    @ApiModelProperty("处理时间")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date gmtDeal;

    @ApiModelProperty("创建时间")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date gmtCreate;

    @ApiModelProperty("更新时间")
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date gmtModified;

    @ApiModelProperty("扩展字段")
    private Long extention;
}