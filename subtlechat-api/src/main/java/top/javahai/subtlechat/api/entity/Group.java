package top.javahai.subtlechat.api.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName(value = "group")
public class Group implements Serializable {

    @TableId(value = "id", type = IdType.UUID)
    @ApiModelProperty(value = "主键")
    private String id;

    @ApiModelProperty(value = "组名称")
    @TableField(value = "group_name")
    private String groupName;


    @ApiModelProperty(value = "组创建时间")
    @TableField(value = "create_time")
    private Date createTime;


}
