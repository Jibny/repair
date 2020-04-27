package top.shmly.system.repair.web.controller;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.shmly.system.repair.contant.RepairOnlineStatus;
import top.shmly.system.repair.entity.RepairOnline;
import top.shmly.system.repair.service.RepairOnlineService;
import top.shmly.system.repair.vo.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.23 下午7:20
 */
@Log4j2
@Api(tags = "报修工单")
@RestController
@RequestMapping("/online")
public class OnlineController {

    @Autowired
    private RepairOnlineService repairOnlineService;


    /**
     * 分页列表查询
     *
     * @param repairOnline
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取报修单数据列表", notes = "获取所有报修单数据列表")
    @GetMapping(value = "/list")
    public Result<?> list(RepairOnline repairOnline, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                          HttpServletRequest req) {
        QueryWrapper<RepairOnline> queryWrapper = new QueryWrapper<>();
        Page<RepairOnline> page = new Page<RepairOnline>(pageNo, pageSize);
        IPage<RepairOnline> pageList = repairOnlineService.page(page, queryWrapper);

        log.info("查询当前页：" + pageList.getCurrent());
        log.info("查询当前页数量：" + pageList.getSize());
        log.info("查询结果数量：" + pageList.getRecords().size());
        log.info("数据总数：" + pageList.getTotal());
        return Result.ok(pageList);
    }

    /**
     * 添加
     *
     * @param repairOnline
     * @return
     */
    @PostMapping(value = "/add")
    @ApiOperation(value = "添加报修单", notes = "添加报修单")
    public Result<?> add(@RequestBody RepairOnline repairOnline) {
        Result<RepairOnline> result = new Result<>();
        try {
            repairOnlineService.save(repairOnline);
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
     * @param repairOnline
     * @return
     */
    @PutMapping(value = "/edit")
    @ApiOperation(value = "编辑报修单", notes = "编辑报修单")
    public Result<?> edit(@RequestBody RepairOnline repairOnline) {
        repairOnlineService.updateById(repairOnline);
        log.info("edit编辑报修单: " + repairOnline.getId());
        return Result.ok("更新成功！");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @DeleteMapping(value = "/delete")
    @ApiOperation(value = "通过ID删除报修单", notes = "通过ID删除报修单")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        repairOnlineService.removeById(id);
        log.info("delete删除报修单: " + id);
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @DeleteMapping(value = "/deleteBatch")
    @ApiOperation(value = "批量删除报修单", notes = "批量删除报修单")
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        this.repairOnlineService.removeByIds(Arrays.asList(ids.split(",")));
        log.info("deleteBatch批量删除报修单: " + Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/queryById")
    @ApiOperation(value = "通过ID查询报修单", notes = "通过ID查询报修单")
    public Result<?> queryById(@ApiParam(name = "id", value = "报修单id", required = true) @RequestParam(name = "id", required = true) String id) {
        RepairOnline repairOnline = repairOnlineService.getById(id);
        log.info("queryById查询报修单: " + id);
        return Result.ok(repairOnline);
    }


    /**
     * 申请报修
     *
     * @param id
     * @return
     */
    @PutMapping(value = "/applyById")
    @ApiOperation(value = "通过ID申请报修单状态", notes = "申请报修单状态")
    public Result<?> applyById(@ApiParam(name = "id", value = "报修单id", required = true) @RequestParam(name = "id", required = true) String id) {
        repairOnlineService.update(new UpdateWrapper<RepairOnline>().eq("id",id).set("status", RepairOnlineStatus.STATUS_APPLICATION));
        log.info("applyById查询报修单: " + id);
        return Result.ok(RepairOnlineStatus.STATUS_APPLICATION);
    }

    /**
     * 处理报修
     *
     * @param id
     * @return
     */
    @PutMapping(value = "/dealById")
    @ApiOperation(value = "通过ID处理报修单状态", notes = "处理报修单状态")
    public Result<?> dealById(@ApiParam(name = "id", value = "报修单id", required = true) @RequestParam(name = "id", required = true) String id) {
        repairOnlineService.update(new UpdateWrapper<RepairOnline>().eq("id",id).set("status", RepairOnlineStatus.STATUS_DEAL));
        log.info("applyById查询报修单: " + id);
        return Result.ok(RepairOnlineStatus.STATUS_DEAL);
    }

    /**
     * 完成报修
     *
     * @param id
     * @return
     */
    @PutMapping(value = "/completeById")
    @ApiOperation(value = "通过ID完成报修单状态", notes = "完成报修单状态")
    public Result<?> completeById(@ApiParam(name = "id", value = "报修单id", required = true) @RequestParam(name = "id", required = true) String id) {
        repairOnlineService.update(new UpdateWrapper<RepairOnline>().eq("id",id).set("status", RepairOnlineStatus.STATUS_COMPLETE));
        log.info("applyById查询报修单: " + id);
        return Result.ok(RepairOnlineStatus.STATUS_COMPLETE);
    }

}
