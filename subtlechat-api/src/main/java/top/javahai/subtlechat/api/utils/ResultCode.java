package top.javahai.subtlechat.api.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * 统一返回状态码
 */
public enum ResultCode {

    /* 成功状态码 */
    SUCCESS(1, "成功"),

    /* 参数错误：101-199 */
    PARAM_IS_INVALID(101, "参数无效"),
    PARAM_IS_BLANK(102, "参数为空"),
    PARAM_TYPE_BIND_ERROR(103, "参数类型错误"),
    PARAM_NOT_COMPLETE(104, "参数缺失"),

    /* 用户错误：201-299*/
    USER_NOT_LOGGED_IN(201, "用户未登录"),
    USER_LOGIN_ERROR(202, "账号不存在或密码错误"),
    USER_ACCOUNT_FORBIDDEN(203, "账号已被禁用"),
    USER_NOT_EXIST(204, "用户不存在"),
    USER_HAS_EXISTED(205, "用户已存在"),
    USER_TRY_TOO_MUCH(206, "尝试次数过多"),
    USER_NO_ACCESS(207, "用户无系统权限"),
    USER_IS_DELETE(208, "用户已被删除"),

    /* 业务错误：301-399 */
    SPECIFIED_QUESTIONED_USER_NOT_EXIST(301, "某业务出现问题"),

    /* 数据错误：401-499 */
    RESULE_DATA_NONE(401, "数据未找到"),
    DATA_IS_WRONG(402, "数据有误"),
    DATA_ALREADY_EXISTED(403, "数据已存在"),

    /* 系统错误：501-599 */
    SYSTEM_INNER_ERROR(501, "系统内部出错，请稍后重试"),

    /* 接口错误：601-699 */
    INTERFACE_INNER_INVOKE_ERROR(601, "内部系统接口调用异常"),
    INTERFACE_OUTTER_INVOKE_ERROR(602, "外部系统接口调用异常"),
    INTERFACE_FORBID_VISIT(603, "该接口禁止访问"),
    INTERFACE_ADDRESS_INVALID(604, "接口地址无效"),
    INTERFACE_REQUEST_TIMEOUT(605, "接口请求超时"),
    INTERFACE_EXCEED_LOAD(606, "接口负载过高"),

    /* 权限错误：701-799 */
    PERMISSION_NO_ACCESS(701, "无访问权限");

    private Integer code;

    private String message;

    ResultCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public static String getMessage(String name) {
        for (ResultCode item : ResultCode.values()) {
            if (item.name().equals(name)) {
                return item.message;
            }
        }
        return name;
    }

    public static ResultCode getItemByCode(Integer code) {
        for (ResultCode item : ResultCode.values()) {
            if (item.code().equals(code)) {
                return item;
            }
        }
        return null;
    }

    public static Integer getCode(String name) {
        for (ResultCode item : ResultCode.values()) {
            if (item.name().equals(name)) {
                return item.code;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return this.name();
    }

    //校验重复的code值
    public static void main(String[] args) {
        ResultCode[] values = ResultCode.values();
        List<Integer> codeList = new ArrayList<>();
        for (ResultCode resultCode : values) {
            if (codeList.contains(resultCode.code)) {
                System.out.println(resultCode.code);
            } else {
                codeList.add(resultCode.code());
            }
        }
    }
}