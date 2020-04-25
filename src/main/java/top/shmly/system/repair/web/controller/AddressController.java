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
import top.shmly.system.repair.entity.RepairAddress;
import top.shmly.system.repair.service.RepairAddressService;
import top.shmly.system.repair.vo.Result;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

/**
 * @description:
 * @author: Jibny
 * @time: 2020.04.23 下午7:10
 */
@Log4j2
@Api(tags = "报修地址")
@RestController
@RequestMapping("/address")
public class AddressController {

    @Autowired
    private RepairAddressService repairAddressService;


    /**
     * 分页列表查询
     *
     * @param repairAddress
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @ApiOperation(value = "获取报修地址数据列表", notes = "获取所有报修地址数据列表")
    @GetMapping(value = "/list")
    public Result<?> list(RepairAddress repairAddress, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo, @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                          HttpServletRequest req) {
        QueryWrapper<RepairAddress> queryWrapper = new QueryWrapper<>();
        Page<RepairAddress> page = new Page<RepairAddress>(pageNo, pageSize);
        IPage<RepairAddress> pageList = repairAddressService.page(page, queryWrapper);
        log.info("查询当前页：" + pageList.getCurrent());
        log.info("查询当前页数量：" + pageList.getSize());
        log.info("查询结果数量：" + pageList.getRecords().size());
        log.info("数据总数：" + pageList.getTotal());
        return Result.ok(pageList);
    }

    /**
     * 添加
     *
     * @param repairAddress
     * @return
     */
    @PostMapping(value = "/add")
    @ApiOperation(value = "添加报修地址", notes = "添加报修地址")
    public Result<?> add(@RequestBody RepairAddress repairAddress) {
        Result<RepairAddress> result = new Result<>();
        try {
            repairAddressService.save(repairAddress);
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
     * @param repairAddress
     * @return
     */
    @PutMapping(value = "/edit")
    @ApiOperation(value = "编辑报修地址", notes = "编辑报修地址")
    public Result<?> edit(@RequestBody RepairAddress repairAddress) {
        repairAddressService.updateById(repairAddress);
        log.info("edit编辑报修地址: " + repairAddress.getId());
        return Result.ok("更新成功！");
    }

    /**
     * 通过id删除
     *
     * @param id
     * @return
     */
    @DeleteMapping(value = "/delete")
    @ApiOperation(value = "通过ID删除报修地址", notes = "通过ID删除报修地址")
    public Result<?> delete(@RequestParam(name = "id", required = true) String id) {
        repairAddressService.removeById(id);
        log.info("delete删除报修地址: " + id);
        return Result.ok("删除成功!");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @DeleteMapping(value = "/deleteBatch")
    @ApiOperation(value = "批量删除报修地址", notes = "批量删除报修地址")
    public Result<?> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        this.repairAddressService.removeByIds(Arrays.asList(ids.split(",")));
        log.info("deleteBatch批量删除报修地址: " + Arrays.asList(ids.split(",")));
        return Result.ok("批量删除成功！");
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/queryById")
    @ApiOperation(value = "通过ID查询报修地址", notes = "通过ID查询报修地址")
    public Result<?> queryById(@ApiParam(name = "id", value = "报修地址id", required = true) @RequestParam(name = "id", required = true) String id) {
        RepairAddress repairAddress = repairAddressService.getById(id);
        log.info("queryById查询报修地址: " + id);
        return Result.ok(repairAddress);
    }

}
