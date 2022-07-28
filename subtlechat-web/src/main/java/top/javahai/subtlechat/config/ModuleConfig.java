package top.javahai.subtlechat.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import springfox.documentation.spring.web.plugins.Docket;

@Component("webModuleConfig")
public class ModuleConfig {
    @Autowired
    public void addBasePacket(Docket docket) {
        Swagger2Config.addBasePackage(docket, "top.javahai.subtlechat");
    }
}

