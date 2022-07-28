package top.javahai.subtlechat;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;


@SpringBootApplication
@MapperScan("top.javahai.subtlechat.dao")
@EnableScheduling
public class SubtleChatWebApplication {
    public static void main(String[] args) {
        SpringApplication.run(SubtleChatWebApplication.class, args);
    }
}
