package org.car.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.car.dao.CarDao;
import org.car.dao.SysDao;
import org.car.domain.Car;
import org.car.domain.CarType;
import org.car.util.JsonUtil;
import org.car.util.ToolUtil;
import org.car.service.CarService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service("carServiceImpl")

public class CarServiceImpl implements CarService {
    @Resource
    CarDao carDao;

    @Resource
    private SysDao sysDao;

    @Override
    public JSONObject addCar(Car car) {

        car.setCar_id(generateID("car", "car_id", 10000000));
        car.setCar_created_time(ToolUtil.getCurrentTime());

        if( carDao.addCar(car) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(car)));
        }else{
            return JsonUtil.getResult(500, "失败", new JSONObject());
        }

    }

    @Override
    public List<Car> getCarList() {
        return carDao.getCarList();
    }

    @Override
    public JSONObject getCar(long carID) {
        return JSONObject.parseObject(JSON.toJSONString(carDao.getCar(carID)));
    }

    @Override
    public JSONObject updateCar(Car car) {
        if( carDao.updateCar(car) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(car)));
        }else{
            return JsonUtil.getResult(500, "失败", new JSONObject());
        }
    }

    /*************************************车辆型号管理部分*************************************/

    @Override
    public JSONObject addCarType(CarType carType) {

        carType.setType_id(generateID("car_type", "type_id", 10000000));

        if( carDao.addCarType(carType) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(carType)));
        }else{
            return JsonUtil.getResult(500, "失败", new JSONObject());
        }

    }

    @Override
    public List<CarType> getCarTypeList() {
        return carDao.getCarTypeList();
    }

    @Override
    public JSONObject getCarType(long carTypeID) {
        return JSONObject.parseObject(JSON.toJSONString(carDao.getCarType(carTypeID)));
    }

    @Override
    public JSONObject updateCarType(CarType carType) {
        if( carDao.updateCarType(carType) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(carType)));
        }else{
            return JsonUtil.getResult(500, "失败", new JSONObject());
        }
    }
    /*************************************车辆状态部分*************************************/

    @Override
    public List<CarType> getCarAvailable(long store_id) {
        return carDao.getCarAvailable(store_id);
    }

    @Override
    public JSONObject updateCarStatus(long carID) {
        if( carDao.updateCarStatus(carID) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(carID)));
        }else{
            return JsonUtil.getResult(500, "失败", new JSONObject());
        }
    }

    long generateID( String table, String primaryFieldName, long initialID){
        long maxNumber = sysDao.getMaxNumber(table,primaryFieldName);
        if( sysDao.getMaxNumber(table,primaryFieldName)==0 ){
            return initialID;
        }else {
            maxNumber++;
            return maxNumber;
        }
    }

}
