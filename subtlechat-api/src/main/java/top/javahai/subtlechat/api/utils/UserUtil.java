package top.javahai.subtlechat.api.utils;

import org.springframework.security.core.context.SecurityContextHolder;
import top.javahai.subtlechat.api.entity.User;

/**
 * 用户工具类
 */
public class UserUtil {
    /**
     * 获取当前登录用户实体
     *
     * @return
     */
    public static User getCurrentUser() {
        return ((User) SecurityContextHolder.getContext().getAuthentication().getPrincipal());
    }
}
