package top.song.chat.api.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class BasicPage {
    @ApiModelProperty(value = "当前页")
    private Integer page;

    @ApiModelProperty(value = "每页总数")
    private Integer total;
}
