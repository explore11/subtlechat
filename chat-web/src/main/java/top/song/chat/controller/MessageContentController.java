package top.song.chat.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.song.chat.api.entity.MessageContent;
import top.song.chat.api.entity.MessageContentChat;
import top.song.chat.api.utils.Result;
import top.song.chat.service.MessageContentService;

import javax.annotation.Resource;

@RestController
@RequestMapping("/messageContent")
public class MessageContentController {
    @Resource
    private MessageContentService messageContentService;

    @PostMapping("/insertMessageContent")
    @ApiOperation(value = "插入消息对象")
    public Result insertMessageContent(@RequestBody MessageContent messageContent) {
        MessageContent result = messageContentService.insertMessageContent(messageContent);
        return Result.success(result);
    }

    @PostMapping("/getMessageContentByPrivateChat")
    @ApiOperation(value = "查询私聊的聊天记录")
    public Result getMessageContentByPrivateChat(@RequestBody MessageContentChat messageContentChat) {
        IPage<MessageContent> page = messageContentService.getMessageContentByPrivateChat(messageContentChat);
        return Result.success(page);
    }

}
