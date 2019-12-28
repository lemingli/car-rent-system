package org.car.service;

import com.alibaba.fastjson.JSONObject;
import org.car.domain.Code;

import java.util.LinkedHashMap;
import java.util.List;

public interface CodeService {
    List<Code> getCityCode();

    LinkedHashMap<Long,String> getEntitySubTypeList(int entity_sub_type_id);

    List<Code> getProvinceCode();

    int getProvinceCodeByCityID(int city_id);

    int getEntityTypeBySubTypeID(int sub_type_id);

    String getProvinceNameByID(int province_id);

    String getCityNameByID(int city_id);

    LinkedHashMap<Long,String> getCityListByProvinceID(long province_id);

    LinkedHashMap<String,Long> getEntityTypeList();

    List<Code> getEntityTypeCodeList();

    List<Code> getEntitySubTypeCodeList(int type_id);




}
