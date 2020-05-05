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
import top.shmly.system.repair.entity.RepairRepairman;
import top.shmly.system.repair.service.RepairRepairmanService;
import top.shmly.system.repair.vo.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.23 下午7:22
 */
@Log4j2
@Api(tags = "维修人员")
@RestController
@RequestMapping("/repairman")
public class RepairmanController {

    @Autowired
    private RepairRepairmanService repairRepairmanService;


    /**
     * 分页列表查询
     *
     * @param repairRepairman
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取维修人员数据列表", notes = "获取所有维修人员数据列表")
    @GetMapping(value = "/list")
    public Result<?> list(RepairRepairman repairRepairman, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                          HttpServletRequest req) {
        QueryWrapper<RepairRepairman> queryWrapper = new QueryWrapper<>();
        Page<RepairRepairman> page = new Page<RepairRepairman>(pageNo, pageSize);
        IPage<RepairRepairman> pageList = repairRepairmanService.page(page, queryWrapper);
        log.info("查询当前页：" + pageList.getCurrent());
        log.info("查询当前页数量：" + pageList.getSize());
        log.info("查询结果数量：" + pageList.getRecords().size());
        log.info("数据总数：" + pageList.getTotal());
        return Result.ok(pageList);
    }


    /**
     * 分页列表查询
     *
     * @param repairRepairman
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取当前维修人员信息", notes = "获取当前维修人员信息")
    @GetMapping(value = "/listById")
    public Result<?> listById(@RequestParam(name = "id", required = true) String id, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                          HttpServletRequest req) {
        QueryWrapper<RepairRepairman> queryWrapper = new QueryWrapper<>();
        Page<RepairRepairman> page = new Page<RepairRepairman>(pageNo, pageSize);
        IPage<RepairRepairman> pageList = repairRepairmanService.page(page, queryWrapper.eq("id",id));
        return Result.ok(pageList);
    }

    /**
     * 添加
     *
     * @param repairRepairman
     * @return
     */
    @PostMapping(value = "/add")
    @ApiOperation(value = "添加维修人员", notes = "添加维修人员")
    public Result<?> add(@RequestBody RepairRepairman repairRepairman) {
        Result<RepairRepairman> result = new Result<>();
        try {
            repairRepairmanService.save(repairRepairman);
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
     * @param repairRepairman
     * @return
     */
    @PutMapping(value = "/edit")
    @ApiOperation(value = "编辑维修人员", notes = "编辑维修人员")
    public Result<?> edit(@RequestBody RepairRepairman repairRepairman) {
        repairRepairmanService.updateById(repairRepairman);
        log.info("edit编辑维修人员: " + repairRepairman.getId());
        return Result.ok("更新成功！");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @DeleteMapping(value = "/delete")
    @ApiOperation(value = "通过ID删除维修人员", notes = "通过ID删除维修人员")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        repairRepairmanService.removeById(id);
        log.info("delete删除维修人员: " + id);
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @DeleteMapping(value = "/deleteBatch")
    @ApiOperation(value = "批量删除维修人员", notes = "批量删除维修人员")
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        this.repairRepairmanService.removeByIds(Arrays.asList(ids.split(",")));
        log.info("deleteBatch批量删除维修人员: " + Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/queryById")
    @ApiOperation(value = "通过ID查询维修人员", notes = "通过ID查询维修人员")
    public Result<?> queryById(@ApiParam(name = "id", value = "维修人员id", required = true) @RequestParam(name = "id", required = true) String id) {
        RepairRepairman repairRepairman = repairRepairmanService.getById(id);
        log.info("queryById查询维修人员: " + id);
        return Result.ok(repairRepairman);
    }

    @GetMapping(value = "/queryByNumber")
    @ApiOperation(value = "通过工号查询维修人员", notes = "通过工号查询维修人员")
    public Result<?> queryByNumber(@ApiParam(name = "number", value = "维修人员学号", required = true) @RequestParam(name = "number", required = true) String number) {
        RepairRepairman repairRepairman = repairRepairmanService.getOne(new QueryWrapper<RepairRepairman>().eq("number",number));
        log.info("queryByNumber查询维修人员: " + number);
        return Result.ok(repairRepairman);
    }


}
