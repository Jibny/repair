package top.shmly.system.repair.web.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.shmly.system.repair.entity.RepairUser;
import top.shmly.system.repair.service.RepairUserService;
import top.shmly.system.repair.vo.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.23 下午7:03
 */
@Log4j2
@Api(tags = "报修用户")
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private RepairUserService repairUserService;


    /**
     * 分页列表查询
     *
     * @param repairUser
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取用户数据列表", notes = "获取所有用户数据列表")
    @GetMapping(value = "/list")
    public Result<?> list(RepairUser repairUser, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                          HttpServletRequest req) {
        QueryWrapper<RepairUser> queryWrapper = new QueryWrapper<>();
        Page<RepairUser> page = new Page<RepairUser>(pageNo, pageSize);
        IPage<RepairUser> pageList = repairUserService.page(page, queryWrapper);
        log.info("查询当前页：" + pageList.getCurrent());
        log.info("查询当前页数量：" + pageList.getSize());
        log.info("查询结果数量：" + pageList.getRecords().size());
        log.info("数据总数：" + pageList.getTotal());
        return Result.ok(pageList);
    }

    /**
     * 添加
     *
     * @param repairUser
     * @return
     */
    @PostMapping(value = "/add")
    @ApiOperation(value = "添加用户", notes = "添加用户")
    public Result<?> add(@RequestBody RepairUser repairUser) {
        Result<RepairUser> result = new Result<>();
        try {
            repairUserService.save(repairUser);
            result.success("添加成功！");
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            result.error500("操作失败");
        }
        return result;
    }

    /**
     * 编辑
     *
     * @param repairUser
     * @return
     */
    @PutMapping(value = "/edit")
    @ApiOperation(value = "编辑用户", notes = "编辑用户")
    public Result<?> edit(@RequestBody RepairUser repairUser) {
        repairUserService.updateById(repairUser);
        log.info("edit编辑用户: " + repairUser.getId());
        return Result.ok("更新成功！");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @DeleteMapping(value = "/delete")
    @ApiOperation(value = "通过ID删除用户", notes = "通过ID删除用户")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        repairUserService.removeById(id);
        log.info("delete删除用户: " + id);
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @DeleteMapping(value = "/deleteBatch")
    @ApiOperation(value = "批量删除用户", notes = "批量删除用户")
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        this.repairUserService.removeByIds(Arrays.asList(ids.split(",")));
        log.info("deleteBatch批量删除用户: " + Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/queryById")
    @ApiOperation(value = "通过ID查询用户", notes = "通过ID查询用户")
    public Result<?> queryById(@ApiParam(name = "id", value = "用户id", required = true) @RequestParam(name = "id", required = true) String id) {
        RepairUser repairUser = repairUserService.getById(id);
        log.info("queryById查询用户: " + id);
        return Result.ok(repairUser);
    }

    @GetMapping(value = "/queryByNumber")
    @ApiOperation(value = "通过学号查询用户", notes = "通过学号查询用户")
    public Result<?> queryByNumber(@ApiParam(name = "number", value = "用户学号", required = true) @RequestParam(name = "number", required = true) String number) {
        RepairUser repairUser = repairUserService.getOne(new QueryWrapper<RepairUser>().eq("number",number));
        log.info("queryByNumber查询用户: " + number);
        return Result.ok(repairUser);
    }


}
