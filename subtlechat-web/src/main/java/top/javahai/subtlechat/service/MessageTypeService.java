package top.javahai.subtlechat.service;

import top.javahai.subtlechat.api.entity.MessageType;

public interface MessageTypeService {
    MessageType getMessageTypeById(Integer messageTypeId);

    Boolean updateMessageTypeById(MessageType messageType);

    Boolean delMessageTypeById(Integer messageTypeId);

    MessageType insertMessageType(MessageType messageType);
}
