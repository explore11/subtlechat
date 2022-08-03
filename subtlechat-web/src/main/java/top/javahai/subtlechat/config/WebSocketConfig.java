package top.javahai.subtlechat.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

/**
 * WebSocket配置
 */
@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {
    /**
     * 注册stomp站点
     *
     * @param registry
     */
    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        // 表示定义一个前缀为 /chat 的 endPoint，并开启 sockjs 支持，
        // sockjs 可以解决浏览器对 WebSocket 的兼容性问题，
        // 客户端将通过这里配置的 URL 来建立 WebSocket 连接
        registry.addEndpoint("/ws/ep").setAllowedOrigins("*").withSockJS();

    }

    /**
     * 注册拦截"/topic","/queue"的消息
     *
     * @param registry
     */
    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry) {
        // 设置消息代理前缀
        // 即如果消息的前缀是 /topic ，就会将消息转发给消息代理（broker），
        // 再由消息代理将消息广播给当前连接的客户端。
        registry.enableSimpleBroker("/topic", "/queue");
        // 如果以/user/用户id/queue/chat使用该样式
//        registry.enableSimpleBroker("/topic", "/user");
    }
}
