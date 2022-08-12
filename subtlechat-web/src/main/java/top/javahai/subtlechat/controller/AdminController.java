package top.javahai.subtlechat.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import top.javahai.subtlechat.api.entity.Admin;
import top.javahai.subtlechat.service.AdminService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Admin)表控制层
 */
@RestController
@RequestMapping("admin")
@Api(tags = "管理")
public class AdminController {
    /**
     * 服务对象
     */
    @Resource
    private AdminService adminService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @ApiOperation("查询单条数据")
    @GetMapping("selectOne")
    public Admin selectOne(Integer id) {
        return this.adminService.queryById(id);
    }

    @ApiOperation("插入单条数据")
    @PostMapping("/insertAdmin")
    public Admin insertAdmin(@RequestBody Admin admin) {
        return this.adminService.insert(admin);
    }

}
