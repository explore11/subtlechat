package top.javahai.subtlechat.api.entity;

import lombok.Data;

import java.util.List;

@Data
public class GroupUpdateUser {
    private String groupId;
    private List<Integer> userIds;
}
