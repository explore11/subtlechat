package top.javahai.subtlechat.api.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class SelfGroup {
    @ApiModelProperty(value = "组ID")
    private String groupId;
    @ApiModelProperty(value = "组名称")
    private String groupName;
}
