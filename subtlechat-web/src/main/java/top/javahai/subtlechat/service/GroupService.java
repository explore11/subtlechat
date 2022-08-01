package top.javahai.subtlechat.service;

import top.javahai.subtlechat.api.entity.GroupInfo;
import top.javahai.subtlechat.api.entity.GroupUpdateUser;
import top.javahai.subtlechat.api.entity.SelfGroup;

import java.util.List;

public interface GroupService {
    Boolean createGroup(List<Integer> userIds);

    Boolean delGroup(String groupId);

    Boolean groupAddUser(GroupUpdateUser groupUpdateUser);

    Boolean groupDelUser(GroupUpdateUser groupUpdateUser);

    List<SelfGroup> getSelfGroup();

    Boolean updateGroupName(GroupInfo groupInfo);
}
