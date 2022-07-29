package top.javahai.subtlechat.service.impl;

import org.springframework.stereotype.Service;
import top.javahai.subtlechat.api.entity.MessageType;
import top.javahai.subtlechat.dao.MessageTypeDao;
import top.javahai.subtlechat.service.MessageTypeService;

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
