package top.shmly.system.repair.web.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import top.shmly.system.repair.contant.CommonConstant;
import top.shmly.system.repair.vo.Result;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(RuntimeException.class)
    @ResponseBody
    public Result<?> exceptionHandler() {
        return Result.error(CommonConstant.SC_INTERNAL_SERVER_ERROR_500, "操作有误,请重新操作");
    }

}
