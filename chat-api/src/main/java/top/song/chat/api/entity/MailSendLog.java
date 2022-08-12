package top.song.chat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.io.Serializable;

/**
 * (MailSendLog)实体类
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "mail_send_log")
public class MailSendLog implements Serializable {
    private static final long serialVersionUID = 740872026109078508L;

    @TableId(value = "id", type = IdType.UUID)
    @ApiModelProperty(value = "主键")
    private String msgId;
    /**
     * 0:反馈，1:验证码
     */
    @ApiModelProperty(value = "内容类型")
    @TableField(value = "content_type")
    private Integer contentType;

    @ApiModelProperty(value = "内容")
    @TableField(value = "content")
    private String content;

    @ApiModelProperty(value = "邮件地址")
    @TableField(value = "mail_address")
    private String mailAddress;

    @ApiModelProperty(value = "状态 0-投递中，1-成功，2-失败")
    @TableField(value = "status")
    private Integer status;

    @ApiModelProperty(value = "路由key")
    @TableField(value = "route_key")
    private String routeKey;

    @ApiModelProperty(value = "exchange 交换机")
    @TableField(value = "exchange")
    private String exchange;

    @ApiModelProperty(value = "总数")
    @TableField(value = "count")
    private Integer count;

    @ApiModelProperty(value = "尝试时间")
    @TableField(value = "try_time")
    private Date tryTime;

    @ApiModelProperty(value = "创建时间")
    @TableField(value = "create_time")
    private Date createTime;

    @ApiModelProperty(value = "更新时间")
    @TableField(value = "update_time")
    private Date updateTime;

    /**
     * 是否删除
     */
    @TableLogic
    @ApiModelProperty(value = "是否删除")
    @TableField(value = "is_delete")
    private Integer isDelete;

}
