package top.song.chat.config;

import com.github.xiaoymin.swaggerbootstrapui.annotations.EnableSwaggerBootstrapUI;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Lists;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.RequestHandler;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.*;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.contexts.SecurityContext;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.List;


@Configuration
@EnableSwagger2
@EnableSwaggerBootstrapUI
public class Swagger2Config {
    private static Predicate<RequestHandler> predicate = null;

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
//                .apis(RequestHandlerSelectors.basePackage("com.hr.doa.controller"))
                .apis(RequestHandlerSelectors.withClassAnnotation(Api.class))//只生成被Api这个注解注解过的类接口
                .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))//只生成被ApiOperation这个注解注解过的api接口
                .paths(PathSelectors.any())
                .build()
                .securityContexts(Lists.newArrayList(securityContext())).securitySchemes(Lists.<SecurityScheme>newArrayList(apiKey()));//增加全局认证
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                // 标题
                .title("chat-接口文档")
                // 描述
                .description("chat-接口文档")
                // 服务网站
                .termsOfServiceUrl("http://www.")
                // 联系人
                .contact(new Contact("song", "", ""))
                // 版本
                .version("1.0")
                .build();
    }

    /**
     * @return void
     * @Description:用于多模块添加需要扫描的包
     * @Author LinJia
     * @Date 2021/9/18
     * @Param [docket, basePackage]
     */
    public static void addBasePackage(Docket docket, String... basePackage) {
        docket.select()
                .apis(basePackage(basePackage))
                .paths(PathSelectors.any())
                .build();
    }

    /**
     * @return com.google.common.base.Predicate<springfox.documentation.RequestHandler>
     * @Description:扫描多包
     * @Author LinJia
     * @Date 2021/9/18
     * @Param [basePackage]
     */
    private static Predicate<RequestHandler> basePackage(final String... basePackage) {
        for (String strBasePackage : basePackage) {
            if (StringUtils.isNotBlank(strBasePackage)) {
                Predicate<RequestHandler> tempPredicate = RequestHandlerSelectors.basePackage(strBasePackage);
                predicate = predicate == null ? tempPredicate : Predicates.or(tempPredicate, predicate);
            }
        }
        return predicate;
    }

    private ApiKey apiKey() {
        return new ApiKey("Token", "token", "header");
    }

    //增加全局认证
    private SecurityContext securityContext() {
        return SecurityContext.builder()
                .securityReferences(defaultAuth())
                .forPaths(PathSelectors.regex("/.*"))
                .build();
    }

    private List<SecurityReference> defaultAuth() {
        AuthorizationScope[] authorizationScopes = {new AuthorizationScope("global", "accessEverything")};
        SecurityReference securityReference = new SecurityReference("token", authorizationScopes);
        return Lists.newArrayList(securityReference);
    }

}
