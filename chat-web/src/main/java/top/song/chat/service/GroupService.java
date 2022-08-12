package top.song.chat.service;

import top.song.chat.api.entity.GroupInfo;
import top.song.chat.api.entity.GroupUpdateUser;
import top.song.chat.api.entity.SelfGroup;

import java.util.List;

public interface GroupService {
    Boolean createGroup(List<Integer> userIds);

    Boolean delGroup(String groupId);

    Boolean groupAddUser(GroupUpdateUser groupUpdateUser);

    Boolean groupDelUser(GroupUpdateUser groupUpdateUser);

    List<SelfGroup> getSelfGroup();

    Boolean updateGroupName(GroupInfo groupInfo);
}
