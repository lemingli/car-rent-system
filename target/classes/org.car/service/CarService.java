package org.car.service;

import com.alibaba.fastjson.JSONObject;
import org.car.domain.Car;
import org.car.domain.CarType;

import java.util.List;

public interface CarService {
    List<Car> getCarList();

    JSONObject addCar(Car car);

    JSONObject getCar(long carID);

    JSONObject updateCar(Car car);

    List<CarType> getCarTypeList();

    JSONObject addCarType(CarType carType);

    JSONObject getCarType(long carTypeID);

    JSONObject updateCarType(CarType carType);

    List<CarType> getCarAvailable(long store_id);

    //更改车辆状态-状态为1

    JSONObject updateCarStatus(long carID);




}
