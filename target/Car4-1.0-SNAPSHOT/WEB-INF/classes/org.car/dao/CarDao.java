package org.car.dao;

import org.car.domain.Car;
import org.car.domain.CarType;

import java.util.List;

public interface CarDao {
    int addCar(Car car);

    List<Car> getCarList();

    Car getCar(long carID);

    int updateCar(Car car);

//    List<Car> getCarListByType(String car_model);

    int addCarType(CarType carType);

    List<CarType> getCarTypeList();

    CarType getCarType(long carID);

    int updateCarType(CarType carType);

    List<CarType> getCarAvailable(long store_id);

    int getAvailableSingleCarId(long type_id,long store_from_id);//获取可用具体车

    int updateCarStatus(long car_id);


}
