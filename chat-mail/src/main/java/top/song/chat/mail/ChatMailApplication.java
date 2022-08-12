package top.song.chat.mail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class ChatMailApplication {

    public static void main(String[] args) {
        SpringApplication.run(ChatMailApplication.class, args);
    }

}
