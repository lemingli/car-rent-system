package org.car.service.impl;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.car.dao.CarDao;
import org.car.dao.OrderDao;
import org.car.dao.SysDao;
import org.car.domain.Car;
import org.car.domain.Order;
import org.car.service.OrderService;
import org.car.util.JsonUtil;
import org.car.util.SpringSecurityUtil;
import org.car.util.ToolUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("orderServiceImpl")

public class OrderServiceImpl implements OrderService {
    @Resource
    private SysDao sysDao;

    @Resource
    private OrderDao orderDao;

    @Resource
    private CarDao carDao;

    @Override
    public JSONObject addOrder(Order order) {
        System.out.println(order);
        order.setUser_id(100000011);
        order.setCreated_time(ToolUtil.getCurrentTime());
        //System.out.println("here");
//        String datetime = order.getCreated_time();
//        String year = datetime.substring(0, 4); //取年
//        String month = datetime.substring(5, 7); //取月
//        String date = datetime.substring(8, 10); //取日
//        String hour = datetime.substring(11, 13);//取小时
//        String minute = datetime.substring(14, 16);//取分钟
//        String second = datetime.substring(17, 19);//取秒
//        int o = Integer.parseInt(year + month + date + hour + minute + second );
//
//        order.setOrder_id(order.getUser_id()+o);
        order.setOrder_id(generateID("car_order", "order_id", 10000000));

        long type_id=order.getType_id();
        long store_from_id = order.getStore_from_id();

        order.setCar_id(carDao.getAvailableSingleCarId(type_id,store_from_id));
//        order.setCar_id(1);


        if( orderDao.addOrder(order) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(order)));
        }else{
            return JsonUtil.getResult(500, "失败", new JSONObject());
        }

    }

    @Override
    public List<Order> getOrderList() {
        return orderDao.getOrderList();
    }

    @Override
    public JSONObject orderConfirm(Order order) {

//        order.setOrder_status(1);
        orderDao.updateStatus(order.getOrder_id());
        long car_id= order.getCar_id();
        carDao.updateCarStatus(car_id);

        if( orderDao.addOrder(order) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(order)));
        }else{
            return JsonUtil.getResult(500, "失败", new JSONObject());
        }

    }
    @Override
    public JSONObject getOrder(long orderID) {
        return JSONObject.parseObject(JSON.toJSONString(orderDao.getOrder(orderID)));
    }

    @Override
    public JSONObject updateOrder(Order order) {
        if( orderDao.updateOrder(order) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(order)));
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
