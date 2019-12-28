package org.car.service;

import com.alibaba.fastjson.JSONObject;
import org.car.domain.Car;
import org.car.domain.Order;

import java.util.List;

public interface OrderService {
    JSONObject addOrder(Order order);

    List<Order> getOrderList();

    JSONObject orderConfirm(Order order);

    JSONObject getOrder(long orderID);

    JSONObject updateOrder(Order order);




}
