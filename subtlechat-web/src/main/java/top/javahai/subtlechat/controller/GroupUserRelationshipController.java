package top.javahai.subtlechat.controller;

import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.javahai.subtlechat.api.entity.GroupUserRelationship;
import top.javahai.subtlechat.api.utils.Result;
import top.javahai.subtlechat.service.GroupUserRelationshipService;

import javax.annotation.Resource;

@RestController
@RequestMapping("/groupUserRelationship")
@Api(value = "用户群组关系")
public class GroupUserRelationshipController {
    @Resource
    private GroupUserRelationshipService groupUserRelationshipService;


    @PostMapping("/insertGroupUserRelationship")
    public Result insertGroupUserRelationship(@RequestBody GroupUserRelationship groupUserRelationship) {
        GroupUserRelationship result = groupUserRelationshipService.insertGroupUserRelationship(groupUserRelationship);
        return Result.success(result);
    }
}

