package com.shangmao.mp3.pojo;

import lombok.Data;

/**
 * @author hecai
 * @date 2020/9/21
 */
@Data
public class ResultBody {
    private Integer status;
    private String message;

    public ResultBody(Integer status, String message){
        this.message = message;
        this.status = status;
    }

    public static ResultBody buildSuccess(){
        return new ResultBody(200, "success");
    }

    public static ResultBody buildFail(){
        return new ResultBody(400, "fail");
    }

}
