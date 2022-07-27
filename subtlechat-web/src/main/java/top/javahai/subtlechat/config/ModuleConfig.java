package top.javahai.subtlechat.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import springfox.documentation.spring.web.plugins.Docket;
import top.javahai.subtlechat.api.config.Swagger2Config;

import javax.annotation.Resource;

@Component("webModuleConfig")
public class ModuleConfig {
    @Autowired
    public void addBasePacket(Docket docket) {
        Swagger2Config.addBasePackage(docket, "top.javahai.subtlechat");
    }
}

