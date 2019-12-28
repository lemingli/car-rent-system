package org.car.domain;

public class CarType {
    long type_id;
    String type_name;
    String brand;//品牌
    int gear_box;//自动-0 手动-1
    int sunroof;//单天窗-0 全景天窗-1 无-2
    int seat;//皮革座椅-0 织物座椅-1
    int reverse_sensor;//倒车雷达 有-1 无-0
    int displacement;//排量
    int fuel_tankage;//油箱容量
    int sound_box;//音箱
    int price;
    int car_size;//三厢-0 7座-1 SUV-2
    int style;//经济型-0 商务型-1 豪华型-2

    public long getType_id() {
        return type_id;
    }

    public void setType_id(long type_id) {
        this.type_id = type_id;
    }

    public String getType_name() {
        return type_name;
    }

    public void setType_name(String type_name) {
        this.type_name = type_name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getGear_box() {
        return gear_box;
    }

    public void setGear_box(int gear_box) {
        this.gear_box = gear_box;
    }

    public int getSunroof() {
        return sunroof;
    }

    public void setSunroof(int sunroof) {
        this.sunroof = sunroof;
    }

    public int getSeat() {
        return seat;
    }

    public void setSeat(int seat) {
        this.seat = seat;
    }

    public int getReverse_sensor() {
        return reverse_sensor;
    }

    public void setReverse_sensor(int reverse_sensor) {
        this.reverse_sensor = reverse_sensor;
    }

    public int getDisplacement() {
        return displacement;
    }

    public void setDisplacement(int displacement) {
        this.displacement = displacement;
    }

    public int getFuel_tankage() {
        return fuel_tankage;
    }

    public void setFuel_tankage(int fuel_tankage) {
        this.fuel_tankage = fuel_tankage;
    }

    public int getSound_box() {
        return sound_box;
    }

    public void setSound_box(int sound_box) {
        this.sound_box = sound_box;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCar_size() {
        return car_size;
    }

    public void setCar_size(int car_size) {
        this.car_size = car_size;
    }

    public int getStyle() {
        return style;
    }

    public void setStyle(int style) {
        this.style = style;
    }
}
