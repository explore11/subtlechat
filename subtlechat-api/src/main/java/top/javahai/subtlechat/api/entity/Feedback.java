package top.javahai.subtlechat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (Feedback)实体类
 *
 * @author makejava
 * @since 2020-10-02 12:14:15
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "feedback")
public class Feedback implements Serializable {
    private static final long serialVersionUID = 550979088670747783L;

    @TableId(value = "id", type = IdType.UUID)
    @ApiModelProperty(value = "主键")
    private String id;

    @ApiModelProperty(value = "用户id")
    @TableField(value = "user_id")
    private String userId;

    @ApiModelProperty(value = "用户名")
    @TableField(value = "username")
    private String username;

    @ApiModelProperty(value = "昵称")
    @TableField(value = "nickname")
    private String nickname;

    @ApiModelProperty(value = "内容")
    @TableField(value = "content")
    private String content;

    /**
     * 是否删除
     */
    @TableLogic
    @ApiModelProperty(value = "是否删除")
    @TableField(value = "delete")
    private Integer delete;
}