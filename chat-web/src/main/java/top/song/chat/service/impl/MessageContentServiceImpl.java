package top.song.chat.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.stereotype.Service;
import top.song.chat.api.entity.MessageContent;
import top.song.chat.api.entity.MessageContentChat;
import top.song.chat.dao.MessageContentDao;
import top.song.chat.service.MessageContentService;

import javax.annotation.Resource;

@Service
public class MessageContentServiceImpl implements MessageContentService {
    @Resource
    private MessageContentDao messageContentDao;


    @Override
    public IPage<MessageContent> getMessageContentByPrivateChat(MessageContentChat messageContentChat) {
        String fromUser = messageContentChat.getFromUser();
        String toUser = messageContentChat.getToUser();

        Integer page = messageContentChat.getPage();
        Integer total = messageContentChat.getTotal();
        Page<MessageContent> messageContentPage = new Page<>(page, total);

        QueryWrapper<MessageContent> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("from_user",fromUser);
        queryWrapper.eq("to_user",toUser);
        queryWrapper.or().eq("from_user",toUser)
                .eq("to_user",fromUser).orderByDesc("create_time");

        IPage<MessageContent> contentIPage = messageContentDao.selectPage(messageContentPage, queryWrapper);
        return contentIPage;
    }

    @Override
    public MessageContent insertMessageContent(MessageContent messageContent) {
        messageContentDao.insert(messageContent);
        return messageContent;
    }
}
