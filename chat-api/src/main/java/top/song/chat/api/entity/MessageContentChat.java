package top.song.chat.api.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 单聊的消息实体
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MessageContentChat extends BasicPage {

    @ApiModelProperty(value = "消息的发送方的账户")
    private String fromUser;

    @ApiModelProperty(value = "消息的接收方的账户")
    private String toUser;

}
