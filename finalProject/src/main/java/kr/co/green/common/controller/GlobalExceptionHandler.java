//package kr.co.green.common.controller;
//
//import org.springframework.http.HttpStatus;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.bind.annotation.ResponseStatus;
//
//@ControllerAdvice
//public class GlobalExceptionHandler {
//
//    @ExceptionHandler(RuntimeException.class)
//    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
//    public String handleRuntimeException(RuntimeException ex, Model model) {
//        model.addAttribute("errorMessage", ex.getMessage());
//
//        return "common/error22";
//    }
//}
//
//
