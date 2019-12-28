package org.car.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class ToolUtil {

    public static String parseTime(long inputTime){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date= new Date(inputTime);
        return sdf.format(date);
    }

    public static String getCurrentTime(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date= new Date();
        return sdf.format(date);
    }

    public static  JSONArray parseListObject(List<? extends Object> objectList){

        JSONArray jsonArray = new JSONArray();
        for( Object object : objectList ){
            jsonArray.add(object);
        }
        return jsonArray;

    }

    public static JSONObject parsePostBodyParameter( String requestString ){
        try {
            return JSON.parseObject(URLDecoder.decode(requestString, "UTF-8").replace("=", ""));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return new JSONObject();
        }
    }

    public static JSONObject returnIllegalParametersErrorMsg(){

        JSONObject resultJSON = new JSONObject();
        resultJSON.put("resultCode", 500);
        resultJSON.put("resultMessage", "请求参数不合法");
        return resultJSON;

    }

}
