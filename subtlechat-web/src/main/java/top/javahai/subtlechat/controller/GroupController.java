package top.javahai.subtlechat.controller;

import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.*;
import top.javahai.subtlechat.api.entity.GroupInfo;
import top.javahai.subtlechat.api.entity.GroupUpdateUser;
import top.javahai.subtlechat.api.entity.SelfGroup;
import top.javahai.subtlechat.api.utils.Result;
import top.javahai.subtlechat.service.GroupService;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/group")
@Api(value = "群组")
public class GroupController {

    @Resource
    private GroupService groupService;


    /**
     * 修改群组名称
     *
     * @return
     */
    @PostMapping("/updateGroupName")
    public Result updateGroupName(@RequestBody GroupInfo groupInfo) {
        Boolean flag = groupService.updateGroupName(groupInfo);
        return Result.success(flag);
    }

    /**
     * 创建群组
     *
     * @param userIds
     * @return
     */
    @PostMapping("/createGroup")
    public Result createGroup(@RequestBody List<Integer> userIds) {
        Boolean flag = groupService.createGroup(userIds);
        return Result.success(flag);
    }

    /**
     * 删除群组
     *
     * @return
     */
    @DeleteMapping("/delGroup/{groupId}")
    public Result delGroup(@PathVariable("groupId") String groupId) {
        Boolean flag = groupService.delGroup(groupId);
        return Result.success(flag);
    }


    /**
     * 群组添加人
     *
     * @param groupUpdateUser
     * @return
     */
    @PostMapping("/groupAddUser")
    public Result groupAddUser(@RequestBody GroupUpdateUser groupUpdateUser) {
        Boolean flag = groupService.groupAddUser(groupUpdateUser);
        return Result.success(flag);
    }

    /**
     * 群组删除人
     *
     * @param groupUpdateUser
     * @return
     */
    @PostMapping("/groupDelUser")
    public Result groupDelUser(@RequestBody GroupUpdateUser groupUpdateUser) {
        Boolean flag = groupService.groupDelUser(groupUpdateUser);
        return Result.success(flag);
    }


    /**
     * 获取自己的群组
     *
     * @return
     */
    @PostMapping("/getSelfGroup")
    public Result getSelfGroup() {
        List<SelfGroup> flag = groupService.getSelfGroup();
        return Result.success(flag);
    }

}
