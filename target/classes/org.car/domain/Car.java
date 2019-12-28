package org.car.domain;

import java.util.Date;

public class Car {
    long car_id;
    String car_name;//车牌号
    String car_image_name;
    String car_created_time;

    //第二次添加

    int car_status;// 未借出-0 已预约-1 租赁中-2 维护修理中-3
    long type_id;//车型
    long store_id;//所在网点

//    Date start_time;//最早能预约时间


    public long getCar_id() {
        return car_id;
    }

    public void setCar_id(long car_id) {
        this.car_id = car_id;
    }

    public String getCar_name() {
        return car_name;
    }

    public void setCar_name(String car_name) {
        this.car_name = car_name;
    }

    public String getCar_image_name() {
        return car_image_name;
    }

    public void setCar_image_name(String car_image_name) {
        this.car_image_name = car_image_name;
    }

    public String getCar_created_time() {
        return car_created_time;
    }

    public void setCar_created_time(String car_created_time) {
        this.car_created_time = car_created_time;
    }

    public int getCar_status() {
        return car_status;
    }

    public void setCar_status(int car_status) {
        this.car_status = car_status;
    }

    public long getType_id() {
        return type_id;
    }

    public void setType_id(long type_id) {
        this.type_id = type_id;
    }

    public long getStore_id() {
        return store_id;
    }

    public void setStore_id(long store_id) {
        this.store_id = store_id;
    }
}
