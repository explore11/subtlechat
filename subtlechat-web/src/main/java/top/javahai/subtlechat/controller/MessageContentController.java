package top.javahai.subtlechat.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.javahai.subtlechat.service.MessageContentService;

import javax.annotation.Resource;

@RestController
@RequestMapping("/messageContent")
public class MessageContentController {
    @Resource
    private MessageContentService messageContentService;
}
