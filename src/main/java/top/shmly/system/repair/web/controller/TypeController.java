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
import top.shmly.system.repair.entity.RepairType;
import top.shmly.system.repair.service.RepairTypeService;
import top.shmly.system.repair.vo.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.23 下午7:18
 */
@Log4j2
@Api(tags = "报修类型")
@RestController
@RequestMapping("/type")
public class TypeController {

    @Autowired
    private RepairTypeService repairTypeService;


    /**
     * 分页列表查询
     *
     * @param repairType
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取报修类型数据列表", notes = "获取所有报修类型数据列表")
    @GetMapping(value = "/list")
    public Result<?> list(RepairType repairType, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                          HttpServletRequest req) {
        QueryWrapper<RepairType> queryWrapper = new QueryWrapper<>();
        Page<RepairType> page = new Page<RepairType>(pageNo, pageSize);
        IPage<RepairType> pageList = repairTypeService.page(page, queryWrapper);
        log.info("查询当前页：" + pageList.getCurrent());
        log.info("查询当前页数量：" + pageList.getSize());
        log.info("查询结果数量：" + pageList.getRecords().size());
        log.info("数据总数：" + pageList.getTotal());
        return Result.ok(pageList);
    }

    /**
     * 添加
     *
     * @param repairType
     * @return
     */
    @PostMapping(value = "/add")
    @ApiOperation(value = "添加报修类型", notes = "添加报修类型")
    public Result<?> add(@RequestBody RepairType repairType) {
        Result<RepairType> result = new Result<>();
        try {
            repairTypeService.save(repairType);
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
     * @param repairType
     * @return
     */
    @PutMapping(value = "/edit")
    @ApiOperation(value = "编辑报修类型", notes = "编辑报修类型")
    public Result<?> edit(@RequestBody RepairType repairType) {
        repairTypeService.updateById(repairType);
        log.info("edit编辑报修类型: " + repairType.getId());
        return Result.ok("更新成功！");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @DeleteMapping(value = "/delete")
    @ApiOperation(value = "通过ID删除报修类型", notes = "通过ID删除报修类型")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        repairTypeService.removeById(id);
        log.info("delete删除报修类型: " + id);
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @DeleteMapping(value = "/deleteBatch")
    @ApiOperation(value = "批量删除报修类型", notes = "批量删除报修类型")
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        this.repairTypeService.removeByIds(Arrays.asList(ids.split(",")));
        log.info("deleteBatch批量删除报修类型: " + Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/queryById")
    @ApiOperation(value = "通过ID查询报修类型", notes = "通过ID查询报修类型")
    public Result<?> queryById(@ApiParam(name = "id", value = "报修类型id", required = true) @RequestParam(name = "id", required = true) String id) {
        RepairType repairType = repairTypeService.getById(id);
        log.info("queryById查询报修类型: " + id);
        return Result.ok(repairType);
    }

}
