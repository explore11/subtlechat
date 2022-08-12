package top.song.chat.exception;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import top.song.chat.api.utils.Result;
import top.song.chat.api.utils.ResultCode;


/**
 * @Description:添加全局异常处理
 **/
@ControllerAdvice
public class BaseExceptionHandler {

    Logger logger = LoggerFactory.getLogger(this.getClass());

    //设置异常错误的页面
    public static final String DEFAULT_ERROR_VIEW = "error";

    /**
     * @return com.hr.rushre.common.utils.Result
     * @Description:自定义异常
     * @Author LinJia
     * @Date 2021/9/16 6:13 下午
     * @Param [ex]
     **/
    @ResponseBody
    @ExceptionHandler(value = MicroServiceException.class)
    public Result handleMicroServiceApiException(MicroServiceException ex) {
        Result<Object> failureResult = Result.failure(ResultCode.getItemByCode(ex.getCode()));
        failureResult.setMessage(ex.getMessage());
        return failureResult;
    }

    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public Object defaultErrorHandler(Exception e) throws Exception {
        //如果是系统的异常，比如空指针这些异常
        logger.error("【系统异常】={}", e.getMessage());
        e.printStackTrace();
        return Result.failure(ResultCode.SYSTEM_INNER_ERROR, e.getMessage());
    }
}
