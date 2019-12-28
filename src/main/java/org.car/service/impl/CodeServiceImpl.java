package org.car.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import org.car.dao.CodeDao;
import org.car.domain.Code;
import org.car.service.CodeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.LinkedHashMap;
import java.util.List;

@Service("codeServiceImpl")
public class CodeServiceImpl implements CodeService {

    @Resource
    private CodeDao codeUtilDao;

    @Override
    public List<Code> getCityCode(){

        return codeUtilDao.getCityCode();

    }

    @Override
    public LinkedHashMap<Long, String> getEntitySubTypeList(int entity_sub_type_id) {

        LinkedHashMap<Long,String> entitySubTypeList = Maps.newLinkedHashMap();

        for( Code sub_type_code : codeUtilDao.getEntitySubTypeList(entity_sub_type_id) ){
            entitySubTypeList.put(sub_type_code.getCodeID(), sub_type_code.getCodeName());

        }

        return entitySubTypeList;
    }

    @Override
    public List<Code> getProvinceCode() {
        return codeUtilDao.getProvinceCode();
    }

    @Override
    public int getProvinceCodeByCityID(int city_id) {
        return codeUtilDao.getProvinceCodeByCityID(city_id);
    }

    @Override
    public int getEntityTypeBySubTypeID(int sub_type_id) {
        return codeUtilDao.getEntityTypeBySubTypeID(sub_type_id);
    }

    @Override
    public String getProvinceNameByID(int province_id) {
        return codeUtilDao.getProvinceNameByID(province_id);
    }

    @Override
    public String getCityNameByID(int city_id) {
        return codeUtilDao.getCityNameByID(city_id);
    }

    @Override
    public LinkedHashMap<Long, String> getCityListByProvinceID(long province_id) {

        LinkedHashMap<Long, String> city_code_list = Maps.newLinkedHashMap();
        for( Code code : codeUtilDao.getCityListByProvinceID(province_id) ){

//      if( !(code.getCodeID()+"").endsWith("0000"))
            city_code_list.put(code.getCodeID(),code.getCodeName());
        }

        return city_code_list;
    }

    @Override
    public LinkedHashMap<String,Long> getEntityTypeList() {
        List<Code> entityTypeList = codeUtilDao.getEntityTypeList();
        LinkedHashMap<String,Long> entityCodeList = Maps.newLinkedHashMap();
        for ( Code code : entityTypeList ){
            entityCodeList.put(code.getCodeName(), code.getCodeID());
        }
        return entityCodeList;
    }

    @Override
    public List<Code> getEntityTypeCodeList() {
        return codeUtilDao.getEntityTypeList();
    }

    @Override
    public List<Code> getEntitySubTypeCodeList(int type_id) {
        return codeUtilDao.getEntitySubTypeList(type_id);
    }





}
