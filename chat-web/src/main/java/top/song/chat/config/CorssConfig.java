package top.song.chat.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


/**
 * @description: 允许跨域访问
 */
@Configuration
public class CorssConfig implements WebMvcConfigurer {

    @Bean
    public FilterRegistrationBean corsFilter() {
        //注册CORS过滤器
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();
        //支持安全证书
        config.setAllowCredentials(true);
        //允许任何域名使用
        config.addAllowedOrigin("*");
        //允许任何头
        config.addAllowedHeader("*");
        //允许任何方法
        config.addAllowedMethod("*");
        //任意路径
        source.registerCorsConfiguration("/**", config);
        FilterRegistrationBean bean = new FilterRegistrationBean(new CorsFilter(source));
        bean.setOrder(0);
        return bean;
    }

}