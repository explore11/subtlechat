package top.javahai.subtlechat.mail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class SubtleChatMailApplication {

    public static void main(String[] args) {
        SpringApplication.run(SubtleChatMailApplication.class, args);
    }

}
