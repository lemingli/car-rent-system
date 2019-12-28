package org.car.domain;

import java.util.Date;

public class Order {
    long order_id;
    String created_time;
    long user_id;
    long type_id;
    long car_id;
    long store_from_id;
    long store_to_id;
    int order_status; //未确认-0 预定成功-1 租赁中-2 已完成-3 已取消-4
    int price;//总价

    public long getOrder_id() {
        return order_id;
    }

    public void setOrder_id(long order_id) {
        this.order_id = order_id;
    }

    public String getCreated_time() {
        return created_time;
    }

    public void setCreated_time(String created_time) {
        this.created_time = created_time;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public long getType_id() {
        return type_id;
    }

    public void setType_id(long type_id) {
        this.type_id = type_id;
    }

    public long getCar_id() {
        return car_id;
    }

    public void setCar_id(long car_id) {
        this.car_id = car_id;
    }

    public long getStore_from_id() {
        return store_from_id;
    }

    public void setStore_from_id(long store_from_id) {
        this.store_from_id = store_from_id;
    }

    public long getStore_to_id() {
        return store_to_id;
    }

    public void setStore_to_id(long store_to_id) {
        this.store_to_id = store_to_id;
    }

    public int getOrder_status() {
        return order_status;
    }

    public void setOrder_status(int order_status) {
        this.order_status = order_status;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
