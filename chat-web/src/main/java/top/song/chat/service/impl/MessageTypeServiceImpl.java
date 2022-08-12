package top.song.chat.service.impl;

import org.springframework.stereotype.Service;
import top.song.chat.api.entity.MessageType;
import top.song.chat.dao.MessageTypeDao;
import top.song.chat.service.MessageTypeService;

import javax.annotation.Resource;

@Service
public class MessageTypeServiceImpl implements MessageTypeService {

    @Resource
    private MessageTypeDao messageTypeDao;

    @Override
    public MessageType getMessageTypeById(Integer messageTypeId) {
        return messageTypeDao.selectById(messageTypeId);
    }


    @Override
    public Boolean updateMessageTypeById(MessageType messageType) {
        return messageTypeDao.updateById(messageType) > 0;
    }

    @Override
    public Boolean delMessageTypeById(Integer messageTypeId) {
        return messageTypeDao.deleteById(messageTypeId) > 0;
    }

    @Override
    public MessageType insertMessageType(MessageType messageType) {
        messageTypeDao.insert(messageType);
        return messageType;
    }
}
