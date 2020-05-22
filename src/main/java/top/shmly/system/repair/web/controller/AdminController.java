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
import top.shmly.system.repair.entity.RepairAdmin;
import top.shmly.system.repair.service.RepairAdminService;
import top.shmly.system.repair.vo.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.23 下午7:03
 */
@Log4j2
@Api(tags = "管理员")
@RestController
@RequestMapping("/Admin")
public class AdminController {

    @Autowired
    private RepairAdminService repairAdminService;


    /**
     * 分页列表查询
     *
     * @param repairAdmin
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取管理员数据列表", notes = "获取所有管理员数据列表")
    @GetMapping(value = "/list")
    public Result<?> list(RepairAdmin repairAdmin, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                          HttpServletRequest req) {
        QueryWrapper<RepairAdmin> queryWrapper = new QueryWrapper<>();
        Page<RepairAdmin> page = new Page<RepairAdmin>(pageNo, pageSize);
        IPage<RepairAdmin> pageList = repairAdminService.page(page, queryWrapper);
        log.info("查询当前页：" + pageList.getCurrent());
        log.info("查询当前页数量：" + pageList.getSize());
        log.info("查询结果数量：" + pageList.getRecords().size());
        log.info("数据总数：" + pageList.getTotal());
        return Result.ok(pageList);
    }

    /**
     * 当前管理员查询
     *
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取当前管理员数据", notes = "获取当前管理员数据")
    @GetMapping(value = "/listById")
    public Result<?> listById(@RequestParam(name = "id", required = true) String id, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                              HttpServletRequest req) {
        QueryWrapper<RepairAdmin> queryWrapper = new QueryWrapper<>();
        Page<RepairAdmin> page = new Page<RepairAdmin>(pageNo, pageSize);
        IPage<RepairAdmin> pageList = repairAdminService.page(page, queryWrapper.eq("id",id));
        return Result.ok(pageList);
    }


    /**
     * 添加
     *
     * @param repairAdmin
     * @return
     */
    @PostMapping(value = "/add")
    @ApiOperation(value = "添加管理员", notes = "添加管理员")
    public Result<?> add(@RequestBody RepairAdmin repairAdmin) {
        Result<RepairAdmin> result = new Result<>();
        try {
            repairAdminService.save(repairAdmin);
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
     * @param repairAdmin
     * @return
     */
    @PutMapping(value = "/edit")
    @ApiOperation(value = "编辑管理员", notes = "编辑管理员")
    public Result<?> edit(@RequestBody RepairAdmin repairAdmin) {
        repairAdminService.updateById(repairAdmin);
        log.info("edit编辑管理员: " + repairAdmin.getId());
        return Result.ok("更新成功！");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @DeleteMapping(value = "/delete")
    @ApiOperation(value = "通过ID删除管理员", notes = "通过ID删除管理员")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        repairAdminService.removeById(id);
        log.info("delete删除管理员: " + id);
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @DeleteMapping(value = "/deleteBatch")
    @ApiOperation(value = "批量删除管理员", notes = "批量删除管理员")
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        this.repairAdminService.removeByIds(Arrays.asList(ids.split(",")));
        log.info("deleteBatch批量删除管理员: " + Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/queryById")
    @ApiOperation(value = "通过ID查询管理员", notes = "通过ID查询管理员")
    public Result<?> queryById(@ApiParam(name = "id", value = "管理员id", required = true) @RequestParam(name = "id", required = true) String id) {
        RepairAdmin repairAdmin = repairAdminService.getById(id);
        log.info("queryById查询管理员: " + id);
        return Result.ok(repairAdmin);
    }

    @GetMapping(value = "/queryByUsername")
    @ApiOperation(value = "通过用户名查询管理员", notes = "通过用户名查询管理员")
    public Result<?> queryByNumber(@ApiParam(name = "username", value = "管理员学号", required = true) @RequestParam(name = "username", required = true) String username) {
        RepairAdmin repairAdmin = repairAdminService.getOne(new QueryWrapper<RepairAdmin>().eq("username",username));
        log.info("queryByUsername查询管理员: " + username);
        return Result.ok(repairAdmin);
    }

}
