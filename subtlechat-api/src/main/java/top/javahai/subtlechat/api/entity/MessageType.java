package top.javahai.subtlechat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@TableName("message_type")
public class MessageType {
    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "主键")
    private Integer id;

    @ApiModelProperty(value = "名称")
    @TableField(value = "name")
    private String name;

    @ApiModelProperty(value = "是否删除")
    @TableLogic
    @TableField(value = "is_delete")
    private Integer isDelete;
}
