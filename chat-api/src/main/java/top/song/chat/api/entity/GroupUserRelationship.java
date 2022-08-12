package top.song.chat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "group_user_relationship")
public class GroupUserRelationship {

    @TableId(value = "id", type = IdType.UUID)
    @ApiModelProperty(value = "主键")
    private String id;

    @ApiModelProperty(value = "组主键")
    @TableField(value = "group_id")
    private String groupId;

    @ApiModelProperty(value = "用户的id")
    @TableField(value = "user_id")
    private Integer userId;

    @ApiModelProperty(value = "用户的账户")
    @TableField(value = "user_account")
    private String userAccount;

    @ApiModelProperty(value = "用户的昵称")
    @TableField(value = "user_nickname")
    private String userNickname;

    @ApiModelProperty(value = "用户的群昵称")
    @TableField(value = "user_group_nickname")
    private String userGroupNickname;

    @ApiModelProperty(value = "用户的头像")
    @TableField(value = "user_profile")
    private String userProfile;

    @ApiModelProperty(value = "创建时间")
    @TableField(value = "create_time",fill = FieldFill.INSERT)
    private Date createTime;

    @TableLogic
    @TableField(value = "is_delete")
    @ApiModelProperty(value = "是否删除")
    private Integer isDelete;
}
