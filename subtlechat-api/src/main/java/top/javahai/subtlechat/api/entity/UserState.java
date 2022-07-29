package top.javahai.subtlechat.api.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (UserState)实体类
 *
 * @author makejava
 * @since 2020-06-16 11:36:02
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "user_state")
public class UserState implements Serializable {
    private static final long serialVersionUID = -38130170610280885L;

    @TableId(value = "id", type = IdType.AUTO)
    @ApiModelProperty(value = "主键")
    private Integer id;
    /**
     * 状态名
     */
    @ApiModelProperty(value = "状态名")
    @TableField(value = "name")
    private String name;

    /**
     * 是否删除
     */
    @TableLogic
    @ApiModelProperty(value = "是否删除")
    @TableField(value = "is_delete")
    private Integer isDelete;

}
