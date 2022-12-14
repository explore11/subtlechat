package top.javahai.subtlechat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.javahai.subtlechat.api.entity.User;
import top.javahai.subtlechat.service.UserService;

import java.util.List;

/**
 * 聊天
 */
@RestController
@RequestMapping("/chat")
public class ChatController {
    @Autowired
    UserService userService;

    @GetMapping("/users")
    public List<User> getUsersWithoutCurrentUser() {
        return userService.getUsersWithoutCurrentUser();
    }
}
