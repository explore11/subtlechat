package top.song.chat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "group_info")
public class GroupInfo implements Serializable {

    @TableId(value = "id", type = IdType.UUID)
    @ApiModelProperty(value = "主键")
    private String id;

    @ApiModelProperty(value = "组名称")
    @TableField(value = "group_name")
    private String groupName;

    @ApiModelProperty(value = "组创建时间")
    @TableField(value = "create_time",fill = FieldFill.INSERT)
    private Date createTime;

    @TableLogic
    @TableField(value = "is_delete")
    @ApiModelProperty(value = "是否删除")
    private Integer isDelete;

}