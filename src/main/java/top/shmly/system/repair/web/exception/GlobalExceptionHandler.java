package top.shmly.system.repair.web.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(RuntimeException.class)
    @ResponseBody
    public Map<String,Object> exceptionHandler(){
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("errorCode", "444");
        map.put("errorMsg", "操作错误!");
        return map;
    }
}
