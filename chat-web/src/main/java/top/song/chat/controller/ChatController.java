package top.song.chat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.song.chat.api.entity.User;
import top.song.chat.service.UserService;

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
