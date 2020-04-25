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
import top.shmly.system.repair.entity.RepairAdvice;
import top.shmly.system.repair.service.RepairAdviceService;
import top.shmly.system.repair.vo.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.23 下午7:15
 */
@Log4j2
@Api(tags = "维修评价")
@RestController
@RequestMapping("/advice")
public class AdviceController {

    @Autowired
    private RepairAdviceService repairAdviceService;


    /**
     * 分页列表查询
     *
     * @param repairAdvice
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取维修评价数据列表", notes = "获取所有维修评价数据列表")
    @GetMapping(value = "/list")
    public Result<?> list(RepairAdvice repairAdvice, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                          HttpServletRequest req) {
        QueryWrapper<RepairAdvice> queryWrapper = new QueryWrapper<>();
        Page<RepairAdvice> page = new Page<RepairAdvice>(pageNo, pageSize);
        IPage<RepairAdvice> pageList = repairAdviceService.page(page, queryWrapper);
        log.info("查询当前页：" + pageList.getCurrent());
        log.info("查询当前页数量：" + pageList.getSize());
        log.info("查询结果数量：" + pageList.getRecords().size());
        log.info("数据总数：" + pageList.getTotal());
        return Result.ok(pageList);
    }

    /**
     * 添加
     *
     * @param repairAdvice
     * @return
     */
    @PostMapping(value = "/add")
    @ApiOperation(value = "添加维修评价", notes = "添加维修评价")
    public Result<?> add(@RequestBody RepairAdvice repairAdvice) {
        Result<RepairAdvice> result = new Result<>();
        try {
            repairAdviceService.save(repairAdvice);
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
     * @param repairAdvice
     * @return
     */
    @PutMapping(value = "/edit")
    @ApiOperation(value = "编辑维修评价", notes = "编辑维修评价")
    public Result<?> edit(@RequestBody RepairAdvice repairAdvice) {
        repairAdviceService.updateById(repairAdvice);
        log.info("edit编辑维修评价: " + repairAdvice.getId());
        return Result.ok("更新成功！");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @DeleteMapping(value = "/delete")
    @ApiOperation(value = "通过ID删除维修评价", notes = "通过ID删除维修评价")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        repairAdviceService.removeById(id);
        log.info("delete删除维修评价: " + id);
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @DeleteMapping(value = "/deleteBatch")
    @ApiOperation(value = "批量删除维修评价", notes = "批量删除维修评价")
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        this.repairAdviceService.removeByIds(Arrays.asList(ids.split(",")));
        log.info("deleteBatch批量删除维修评价: " + Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/queryById")
    @ApiOperation(value = "通过ID查询维修评价", notes = "通过ID查询维修评价")
    public Result<?> queryById(@ApiParam(name = "id", value = "维修评价id", required = true) @RequestParam(name = "id", required = true) String id) {
        RepairAdvice repairAdvice = repairAdviceService.getById(id);
        log.info("queryById查询维修评价: " + id);
        return Result.ok(repairAdvice);
    }

}
