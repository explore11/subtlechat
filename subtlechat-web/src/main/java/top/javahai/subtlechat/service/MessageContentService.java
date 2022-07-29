package top.javahai.subtlechat.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import top.javahai.subtlechat.api.entity.MessageContent;
import top.javahai.subtlechat.api.entity.MessageContentChat;

import java.awt.*;
import java.util.List;

public interface MessageContentService {
    MessageContent insertMessageContent(MessageContent messageContent);


    IPage<MessageContent> getMessageContentByPrivateChat(MessageContentChat messageContentChat);

}
