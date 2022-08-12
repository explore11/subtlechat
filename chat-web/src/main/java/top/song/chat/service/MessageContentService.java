package top.song.chat.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import top.song.chat.api.entity.MessageContent;
import top.song.chat.api.entity.MessageContentChat;

public interface MessageContentService {
    MessageContent insertMessageContent(MessageContent messageContent);


    IPage<MessageContent> getMessageContentByPrivateChat(MessageContentChat messageContentChat);

}
