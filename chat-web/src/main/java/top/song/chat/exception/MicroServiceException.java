package top.song.chat.exception;

public class MicroServiceException extends RuntimeException {
    public MicroServiceException(Integer code, String message) {
        super(message);
        this.code = code;
    }
    private Integer code;
    public Integer getCode() {
        return code;
    }
    public void setCode(Integer code) {
        this.code = code;
    }
}
