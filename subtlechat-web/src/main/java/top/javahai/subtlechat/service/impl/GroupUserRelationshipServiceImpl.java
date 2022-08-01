package top.javahai.subtlechat.service.impl;

import org.springframework.stereotype.Service;
import top.javahai.subtlechat.api.entity.GroupUserRelationship;
import top.javahai.subtlechat.dao.GroupUserRelationshipDao;
import top.javahai.subtlechat.service.GroupUserRelationshipService;

import javax.annotation.Resource;

@Service
public class GroupUserRelationshipServiceImpl implements GroupUserRelationshipService {
    @Resource
    private GroupUserRelationshipDao groupUserRelationshipDao;


    @Override
    public GroupUserRelationship insertGroupUserRelationship(GroupUserRelationship groupUserRelationship) {
        groupUserRelationshipDao.insert(groupUserRelationship);
        return groupUserRelationship;
    }


}
