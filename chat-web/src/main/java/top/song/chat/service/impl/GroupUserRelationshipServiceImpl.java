package top.song.chat.service.impl;

import org.springframework.stereotype.Service;
import top.song.chat.api.entity.GroupUserRelationship;
import top.song.chat.dao.GroupUserRelationshipDao;
import top.song.chat.service.GroupUserRelationshipService;

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
