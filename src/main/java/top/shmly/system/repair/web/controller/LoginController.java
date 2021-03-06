package top.shmly.system.repair.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.shmly.system.repair.entity.RepairAdmin;
import top.shmly.system.repair.entity.RepairRepairman;
import top.shmly.system.repair.entity.RepairUser;
import top.shmly.system.repair.service.RepairAdminService;
import top.shmly.system.repair.service.RepairRepairmanService;
import top.shmly.system.repair.service.RepairUserService;
import top.shmly.system.repair.vo.Result;


/**
 * @description:
 * @author: Jibny
 * @time: 2020.05.02 上午4:51
 */

@Log4j2
@Api(tags = "登入接口")
@RestController
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private RepairUserService repairUserService;

    @Autowired
    private RepairRepairmanService repairRepairmanService;

    @Autowired
    private RepairAdminService repairAdminService;


    /**
     * @param username,password
     * @description: 普通用户登入
     * @author: Jibny
     * @time: 20-5-2 上午5:38
     */

    @ApiOperation(value = "普通用户登入", notes = "普通用户登入")
    @PostMapping(value = "/userLogin")
    private Result<?> userLogin(@RequestParam(name = "username", required = true) String username, @RequestParam(name = "password", required = true) String password) {
        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
            return Result.error("账号或密码不能为空");
        }
        Result<RepairUser> result = new Result<>();
        RepairUser repairUser = repairUserService.getOne(new QueryWrapper<RepairUser>().eq("username", username), false);
        if (null == repairUser || "".equals(repairUser.getName())) {
            repairUser = repairUserService.getOne(new QueryWrapper<RepairUser>().eq("number", username), false);
            if (null == repairUser || "".equals(repairUser.getName())) {
                return Result.error("该用户不存在");
            }
        }
        if (!repairUser.getPassword().equals(password)) {
            return Result.error("输入密码错误");
        }
        log.info("userLogin登入普通用户为: " + repairUser.getName());
        return Result.ok(repairUser);
    }

    /**
     * @param username,password
     * @description: 报修用户登入
     * @author: Jibny
     * @time: 20-5-2 上午5:38
     */

    @ApiOperation(value = "维修人员登入", notes = "维修人员登入")
    @PostMapping(value = "/repairmanLogin")
    private Result<?> repairmanLogin(@RequestParam(name = "username", required = true) String username, @RequestParam(name = "password", required = true) String password) {
        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
            return Result.error("账号或密码不能为空");
        }
        Result<RepairRepairman> result = new Result<>();
        RepairRepairman repairRepairman = repairRepairmanService.getOne(new QueryWrapper<RepairRepairman>().eq("username", username), false);
        if (null == repairRepairman || "".equals(repairRepairman.getName())) {
            repairRepairman = repairRepairmanService.getOne(new QueryWrapper<RepairRepairman>().eq("number", username), false);
            if (null == repairRepairman || "".equals(repairRepairman.getName())) {
                return Result.error("该维修人员不存在");
            }
        }
        if (!repairRepairman.getPassword().equals(password)) {
            return Result.error("输入密码错误");
        }
        log.info("repairmanLogin登录维修人员为: " + repairRepairman.getName());
        return Result.ok(repairRepairman);
    }

//    /**
//     * @param username,password
//     * @description: 普通用户账号登入
//     * @author: Jibny
//     * @time: 20-5-2 上午5:38
//     */
//
//    @ApiOperation(value = "普通用户账号登入", notes = "普通用户账号登入")
//    @PostMapping(value = "/userLogin")
//    private Result<?> userLogin(@RequestParam(name = "username", required = true) String username, @RequestParam(name = "password", required = true) String password) {
//
//        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
//            return Result.error("账号或密码不能为空");
//        }
//        Result<RepairUser> result = new Result<>();
//        RepairUser repairUser = repairUserService.getOne(new QueryWrapper<RepairUser>().eq("username", username).eq("password", password), false);
//        if (null == repairUser || "".equals(repairUser.getName())) {
//            return Result.error("用户名或密码错误");
//        }
//        log.info("userLogin登入普通用户为: " + repairUser.getName());
//        return Result.ok(repairUser);
//    }

//
//    @ApiOperation(value = "普通用户学号登入", notes = "普通用户学号登入")
//    @PostMapping(value = "/userNumberLogin")
//    private Result<?> userNumberLogin(@RequestParam(name = "number", required = true) String number, @RequestParam(name = "password", required = true) String password) {
//
//        if (StringUtils.isBlank(number) || StringUtils.isBlank(password)) {
//            return Result.error("账号或密码不能为空");
//        }
//        Result<RepairUser> result = new Result<>();
//        RepairUser repairUser = repairUserService.getOne(new QueryWrapper<RepairUser>().eq("number", number).eq("password", password), false);
//        if (null == repairUser || "".equals(repairUser.getNumber())) {
//            return Result.error("用户名或密码错误");
//        }
//        log.info("userNumberLogin登入普通用户为: " + repairUser.getNumber());
//        return Result.ok(repairUser);
//    }
//
//
//    /**
//     * @param username,password
//     * @description: 报修用户登入
//     * @author: Jibny
//     * @time: 20-5-2 上午5:38
//     */
//
//    @ApiOperation(value = "维修人员账号登入", notes = "维修人员账号登入")
//    @PostMapping(value = "/repairmanLogin")
//    private Result<?> repairmanLogin(@RequestParam(name = "username", required = true) String username, @RequestParam(name = "password", required = true) String password) {
//        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
//            return Result.error("账号或密码不能为空");
//        }
//        Result<RepairRepairman> result = new Result<>();
//        RepairRepairman repairRepairman = repairRepairmanService.getOne(new QueryWrapper<RepairRepairman>().eq("username", username).eq("password", password), false);
//        if (null == repairRepairman || "".equals(repairRepairman.getName())) {
//            return Result.error("用户名或密码错误");
//        }
//        log.info("repairmanLogin登入普通用户为: " + repairRepairman.getName());
//        return Result.ok(repairRepairman);
//    }
//
//
//    /**
//     * @param number,password
//     * @description: 报修用户登入
//     * @author: Jibny
//     * @time: 20-5-2 上午5:38
//     */
//
//    @ApiOperation(value = "维修人员工号登入", notes = "维修人员工号登入")
//    @PostMapping(value = "/repairmanNumberLogin")
//    private Result<?> repairmanNumberLogin(@RequestParam(name = "number", required = true) String number, @RequestParam(name = "password", required = true) String password) {
//        if (StringUtils.isBlank(number) || StringUtils.isBlank(password)) {
//            return Result.error("账号或密码不能为空");
//        }
//        Result<RepairRepairman> result = new Result<>();
//        RepairRepairman repairRepairman = repairRepairmanService.getOne(new QueryWrapper<RepairRepairman>().eq("number", number).eq("password", password), false);
//        if (null == repairRepairman || "".equals(repairRepairman.getNumber())) {
//            return Result.error("用户名或密码错误");
//        }
//        log.info("repairmanNumberLogin登入普通用户为: " + repairRepairman.getNumber());
//        return Result.ok(repairRepairman);
//    }


    /**
     * @param username,password
     * @description: 管理员登入
     * @author: Jibny
     * @time: 20-5-2 上午5:38
     */
    @ApiOperation(value = "管理员登入", notes = "管理员登入")
    @PostMapping(value = "/adminLogin")
    private Result<?> adminLogin(@RequestParam(name = "username", required = true) String username, @RequestParam(name = "password", required = true) String password) {
        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
            return Result.error("账号或密码不能为空");
        }
        RepairAdmin repairAdmin = repairAdminService.findByUsername(username);
        if (null == repairAdmin || "".equals(repairAdmin.getName())) {
            return Result.error("该管理员不存在");
        }
        if(!repairAdmin.getPassword().equals(password)){
            return Result.error("输入密码错误");
        }
        log.info("AdminLogin登录管理员为: " + repairAdmin.getName());
        return Result.ok(repairAdmin);
    }

}
