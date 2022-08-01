package top.javahai.subtlechat.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import top.javahai.subtlechat.api.entity.GroupUserRelationship;
import top.javahai.subtlechat.api.entity.SelfGroup;

import java.util.List;

public interface GroupUserRelationshipDao extends BaseMapper<GroupUserRelationship> {
    void addBatch(@Param("groupUserRelationshipList") List<GroupUserRelationship> groupUserRelationshipList);

    List<SelfGroup> selfGroup(@Param("userId") Integer userId);
}
