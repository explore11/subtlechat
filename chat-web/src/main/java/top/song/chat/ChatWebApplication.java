package top.song.chat;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;


@SpringBootApplication
@MapperScan("top.song.chat.dao")
@EnableScheduling
public class ChatWebApplication {
    public static void main(String[] args) {
        SpringApplication.run(ChatWebApplication.class, args);
    }
}
