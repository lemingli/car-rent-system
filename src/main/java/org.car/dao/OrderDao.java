package org.car.dao;

import org.car.domain.Order;

import java.util.List;

public interface OrderDao {
    int addOrder(Order order);

    List<Order> getOrderList();

    Order getOrder(long carID);

    int updateOrder(Order order);

    int updateStatus(long orderID);

}
