package org.car.util;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class JsonUtil {
    public static JSONObject getResult(int resultCode, String resultMessage, JSONObject jsonObject){
        JSONObject result = new JSONObject();
        result.put("resultCode", resultCode);
        result.put("resultMessage", resultMessage);
        result.put("resultModel", jsonObject);

        return result;
    }

    public static JSONObject getResult(int resultCode, String resultMessage, JSONArray jsonObject){
        JSONObject result = new JSONObject();
        result.put("resultCode", resultCode);
        result.put("resultMessage", resultMessage);
        result.put("resultModel", jsonObject);

        return result;
    }
}
