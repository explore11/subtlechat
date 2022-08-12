package top.song.chat.api.utils;

import java.beans.Transient;
import java.io.Serializable;

/**
 * 统一返回数据封装
 */
public class Result<T> implements Serializable {
    private static final long serialVersionUID = 5104792673325472114L;

    private Integer code;
    private String message;
    private T data;

    public Result() {
    }

    private Result(Integer code, String message) {
        this.code = code;
        this.message = message;
    }


    private Result(ResultCode resultCode) {
        this.code = resultCode.code();
        this.message = resultCode.message();
    }

    private Result(ResultCode resultCode, T data) {
        this(resultCode);
        this.data = data;
    }

    public Result(Integer code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public static <T> Result<T> success() {
        return new Result<>(ResultCode.SUCCESS);
    }

    public static <T> Result<T> success(T data) {
        return new Result<>(ResultCode.SUCCESS, data);
    }

    public static <T> Result<T> success(T data, String message) {
        return new Result<>(ResultCode.SUCCESS.code(), message, data);
    }

    public static <T> Result<T> success(Integer code, String message) {
        return new Result<>(code, message);
    }


    public static <T> Result<T> failure(ResultCode resultCode) {
        return new Result<>(resultCode);
    }

    public static <T> Result<T> failure(ResultCode resultCode, T data) {
        return new Result<>(resultCode, data);
    }

    public static <T> Result<T> failure(String message) {
        return new Result<>(302, message);
    }

    public static <T> Result<T> check(boolean flag, ResultCode resultCode) {
        return flag ? success() : failure(resultCode);
    }

    @Transient
    public boolean isSuccess() {
        return this.code.equals(ResultCode.SUCCESS.code());
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
