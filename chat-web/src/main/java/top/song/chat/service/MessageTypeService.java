package top.song.chat.service;

import top.song.chat.api.entity.MessageType;

public interface MessageTypeService {
    MessageType getMessageTypeById(Integer messageTypeId);

    Boolean updateMessageTypeById(MessageType messageType);

    Boolean delMessageTypeById(Integer messageTypeId);

    MessageType insertMessageType(MessageType messageType);
}
