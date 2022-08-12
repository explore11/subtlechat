package top.song.chat.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import top.song.chat.api.entity.*;
import top.song.chat.api.utils.ResultCode;
import top.song.chat.dao.GroupDao;
import top.song.chat.dao.GroupUserRelationshipDao;
import top.song.chat.dao.UserDao;
import top.song.chat.exception.MicroServiceException;
import top.song.chat.service.GroupService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class GroupServiceImpl implements GroupService {

    @Resource
    private GroupDao groupDao;

    @Resource
    private UserDao userDao;

    @Resource
    private GroupUserRelationshipDao groupUserRelationshipDao;


    @Override
    public Boolean updateGroupName(GroupInfo groupInfo) {
        groupDao.updateById(groupInfo);
        return Boolean.TRUE;
    }

    @Override
    public List<SelfGroup> getSelfGroup() {

        //拿到用户id
        Integer userId = 0;
        //根据用户id去匹配
        List<SelfGroup> selfGroups = groupUserRelationshipDao.selfGroup(userId);

        return selfGroups;
    }

    @Override
    public Boolean groupAddUser(GroupUpdateUser groupUpdateUser) {
        String groupId = groupUpdateUser.getGroupId();
        List<Integer> userIds = groupUpdateUser.getUserIds();

        List<User> userList = getUsers(userIds);

        //用户映射
        Map<Integer, User> userMap = userList.stream().collect(Collectors.toMap(User::getId, user -> user));
        //组合数据
        List<GroupUserRelationship> userRelationshipList = getGroupUserRelationships(userIds, userMap, groupId);
        //添加关系
        groupUserRelationshipDao.addBatch(userRelationshipList);
        return Boolean.TRUE;
    }

    @Override
    public Boolean groupDelUser(GroupUpdateUser groupUpdateUser) {
        String groupId = groupUpdateUser.getGroupId();
        List<Integer> userIds = groupUpdateUser.getUserIds();

        QueryWrapper<GroupUserRelationship> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("group_id", groupId);
        queryWrapper.in("user_id", userIds);

        groupUserRelationshipDao.delete(queryWrapper);
        return Boolean.TRUE;
    }

    @Override
    @Transactional
    public Boolean delGroup(String groupId) {
        QueryWrapper<GroupUserRelationship> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("group_id", groupId);
        List<GroupUserRelationship> relationshipList = groupUserRelationshipDao.selectList(queryWrapper);
        if (!CollectionUtils.isEmpty(relationshipList)) {
            //再删除关系
            List<String> ids = relationshipList.stream().map(GroupUserRelationship::getId).collect(Collectors.toList());
            groupUserRelationshipDao.deleteBatchIds(ids);
        }
        //先删除群组
        groupDao.deleteById(groupId);
        return Boolean.TRUE;
    }

    @Override
    @Transactional
    public Boolean createGroup(List<Integer> userIds) {
        if (CollectionUtils.isEmpty(userIds)) {
            throw new MicroServiceException(ResultCode.PARAM_NOT_COMPLETE.code(), ResultCode.PARAM_NOT_COMPLETE.message());
        }
        //查询用户数据
        List<User> userList = getUsers(userIds);

        // 获取群组名
        String groupName = getGroupName(userList);
        //创建组
        GroupInfo group = new GroupInfo();
        group.setGroupName(groupName);
        groupDao.insert(group);

        //用户映射
        Map<Integer, User> userMap = userList.stream().collect(Collectors.toMap(User::getId, user -> user));

        //获取组Id
        String groupId = group.getId();
        //组合数据
        List<GroupUserRelationship> groupUserRelationshipList = getGroupUserRelationships(userIds, userMap, groupId);
        //批量添加
        groupUserRelationshipDao.addBatch(groupUserRelationshipList);

        return Boolean.TRUE;
    }

    /**
     * 组合数据
     *
     * @param userIds
     * @param userMap
     * @param groupId
     * @return
     */
    private List<GroupUserRelationship> getGroupUserRelationships(List<Integer> userIds, Map<Integer, User> userMap, String groupId) {
        List<GroupUserRelationship> groupUserRelationshipList = new ArrayList<>();
        for (Integer userId : userIds) {
            GroupUserRelationship groupUserRelationship = new GroupUserRelationship();
            User user = userMap.get(userId);
            groupUserRelationship.setGroupId(groupId);
            groupUserRelationship.setUserId(userId);
            groupUserRelationship.setUserAccount(user.getUsername());
            groupUserRelationship.setUserNickname(user.getNickname());
            groupUserRelationship.setUserProfile(user.getUserProfile());
            groupUserRelationship.setCreateTime(new Date());
            groupUserRelationshipList.add(groupUserRelationship);
        }
        return groupUserRelationshipList;
    }

    /**
     * 获取用户信息
     *
     * @param userIds
     * @return
     */
    private List<User> getUsers(List<Integer> userIds) {
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.in("id", userIds);
        return userDao.selectList(userQueryWrapper);
    }

    private String getGroupName(List<User> userList) {
        StringBuilder groupName = new StringBuilder();
        for (int i = 0; i < userList.size(); i++) {
            User user = userList.get(i);
            if (i != userList.size() - 1) {
                groupName.append(user.getUsername()).append("、");
            } else {
                groupName.append(user.getUsername());
            }
        }
        return groupName.toString();
    }


    public static void main(String[] args) {
        List<User> list = new ArrayList<>();
        User user = new User();
        user.setUsername("user");
        User user1 = new User();
        user1.setUsername("user1");
        User user2 = new User();
        user2.setUsername("user2");

        list.add(user);
        list.add(user1);
        list.add(user2);
//        String groupName = getGroupName(list);
//        System.out.println(groupName);
    }
}
