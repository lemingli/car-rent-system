package org.car.dao;

import org.car.domain.Code;

import java.util.List;

public interface CodeDao {
    List<Code> getCityCode();

    List<Code> getProvinceCode();

    int getProvinceCodeByCityID(int city_id);

    List<Code> getCityListByProvinceID(long province_id);

    List<Code> getEntitySubTypeList( int entity_type_id );

    int getEntityTypeBySubTypeID(int sub_type_id);

    String getProvinceNameByID(int province_id);

    String getCityNameByID(int city_id);

    List<Code> getEntityTypeList();

//    City getCityInfoByName(String cityName);

}
