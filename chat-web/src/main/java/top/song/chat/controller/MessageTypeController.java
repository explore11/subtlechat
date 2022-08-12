package top.song.chat.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import top.song.chat.api.entity.MessageType;
import top.song.chat.api.utils.Result;
import top.song.chat.service.MessageTypeService;

import javax.annotation.Resource;

@RestController
@RequestMapping("/messageType")
@Api(value = "消息类型")
public class MessageTypeController {

    @Resource
    private MessageTypeService messageTypeService;


    @GetMapping("/getMessageTypeById/{messageTypeId}")
    @ApiOperation(value = "根据id查询单个对象")
    public Result getMessageTypeById(@PathVariable("messageTypeId") Integer messageTypeId) {
        MessageType messageType = messageTypeService.getMessageTypeById(messageTypeId);
        return Result.success(messageType);
    }

    @PutMapping("/updateMessageTypeById")
    @ApiOperation(value = "根据id修改单个对象")
    public Result updateMessageTypeById(@RequestBody MessageType messageType) {
        Boolean result = messageTypeService.updateMessageTypeById(messageType);
        return Result.success(result);
    }


    @DeleteMapping("/delMessageTypeById/{messageTypeId}")
    @ApiOperation(value = "根据id刪除单个对象")
    public Result delMessageTypeById(@PathVariable("messageTypeId") Integer messageTypeId) {
        Boolean result = messageTypeService.delMessageTypeById(messageTypeId);
        return Result.success(result);
    }

    @PostMapping("/insertMessageType")
    @ApiOperation(value = "插入单个对象")
    public Result insertMessageType(@RequestBody MessageType  messageType) {
        MessageType result = messageTypeService.insertMessageType(messageType);
        return Result.success(result);
    }


}
