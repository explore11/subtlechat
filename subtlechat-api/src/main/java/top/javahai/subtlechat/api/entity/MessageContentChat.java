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
public class MessageContentChat extends BasicPage {

    @ApiModelProperty(value = "消息的发送方的账户")
    private String fromUser;

    @ApiModelProperty(value = "消息的接收方的账户")
    private String toUser;

}
