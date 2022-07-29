package top.javahai.subtlechat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * 单聊的消息实体
 *
 * @author Hai
 * @date 2020/6/25 - 19:32
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("message_content")
public class MessageContent {

    @TableId(value = "id", type = IdType.UUID)
    @ApiModelProperty(value = "主键")
    private String id;

    @ApiModelProperty(value = "消息的发送方的账户")
    @TableField(value = "from_user")
    private String fromUser;

    @ApiModelProperty(value = "消息的发送方的昵称")
    @TableField(value = "from_nick_name")
    private String fromNickname;

    @ApiModelProperty(value = "消息的发送方的头像")
    @TableField(value = "from_user_profile")
    private String fromUserProfile;

    @ApiModelProperty(value = "消息的接收方的账户")
    @TableField(value = "to_user")
    private String toUser;

    @ApiModelProperty(value = "消息的接收方的昵称")
    @TableField(value = "to_nick_name")
    private String toNickname;

    @ApiModelProperty(value = "消息的接收方的头像")
    @TableField(value = "to_user_profile")
    private String toUserProfile;

    @ApiModelProperty(value = "消息内容")
    @TableField(value = "content")
    private String content;

    @ApiModelProperty(value = "消息类型Id")
    @TableField(value = "message_type_id")
    private Integer messageTypeId;

    @ApiModelProperty(value = "消息的创建时间")
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Date createTime;

    @ApiModelProperty(value = "是否删除")
    @TableLogic
    @TableField(value = "is_delete")
    private Integer isDelete;

}
