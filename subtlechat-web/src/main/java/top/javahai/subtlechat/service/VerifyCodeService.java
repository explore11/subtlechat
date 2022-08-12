package top.javahai.subtlechat.service;

/**
 * 验证码服务层
 */
public interface VerifyCodeService {

    String getVerifyCode();

    void sendVerifyCodeMail(String code);

}
