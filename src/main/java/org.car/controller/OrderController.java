package org.car.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.car.domain.Car;
import org.car.domain.Order;
import org.car.service.CarService;
import org.car.service.OrderService;
import org.car.service.StoreService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
@Controller
public class OrderController {
    @Resource
    private OrderService orderService;

    @Resource
    private CarService carService;

    @Resource
    private StoreService storeService;
    /*************************************订单生成部分*************************************/
    //查询可用车辆页面
    @RequestMapping("order/car/available/{store_id}")
    public ModelAndView getCarAvailable(@PathVariable @RequestParam(value = "store_id",  defaultValue = "10000000") long store_id) {
        ModelAndView modelAndView = new ModelAndView("select_car");
        modelAndView.addObject("carType", carService.getCarAvailable(store_id));
        modelAndView.addObject("store", storeService.getStore(store_id));
        return modelAndView;
    }


    //订单页面
    @RequestMapping("/order/confirm/{type_id}/{price}/{store_from_id}/{store_to_id}")
    public ModelAndView orderConfirm(@PathVariable long type_id,@PathVariable int price,@PathVariable long store_from_id,@PathVariable long store_to_id) {
        ModelAndView modelAndView = new ModelAndView("order");
        modelAndView.addObject("carType", carService.getCarType(type_id));
        modelAndView.addObject("store",storeService.getStore(store_from_id));
        modelAndView.addObject("price",price);

        return modelAndView;
    }

    //添加订单处理
    @RequestMapping("/order/add/handle")
    public @ResponseBody
    JSONObject orderAdd(@RequestBody Order order) {
        return orderService.addOrder(order);
    }

    //个人订单管理
    @RequestMapping("/order/my-order-manage")
    public ModelAndView manageMyOrder() {
        ModelAndView modelAndView = new ModelAndView("my_dingdan");
        modelAndView.addObject("order", orderService.getOrderList());
        return modelAndView;
    }

    //确认订单处理
    @RequestMapping("/order/confirm/handle")
    public @ResponseBody
    JSONObject orderConfirm(@RequestBody Order order) {
        return orderService.orderConfirm(order);
    }


    /*************************************订单管理部分*************************************/
    //订单管理
    @RequestMapping("/admin/order-manage")
    public ModelAndView manageOrder() {
        ModelAndView modelAndView = new ModelAndView("admin/order/order_manage");
        modelAndView.addObject("order", orderService.getOrderList());
        modelAndView.addObject("car", carService.getCar(10000000));

        return modelAndView;
    }
    //添加订单的页面
    @RequestMapping("/admin/order-add")
    public ModelAndView addOrder() {
        return new ModelAndView("admin/order/order_add");
    }

    //新建订单处理
    @RequestMapping("/admin/order-add-handle")
    public @ResponseBody
    JSONObject addOrder(@RequestBody Order order) {
        return orderService.addOrder(order);
    }


    //订单信息修改页面
    @RequestMapping("admin/order/{orderID}/modify")
    public ModelAndView goCarModifyPage( @PathVariable long orderID ){
        ModelAndView modelAndView = new ModelAndView("admin/order/order_modify");
        modelAndView.addObject("car", carService.getCar(orderID));
        return modelAndView;
    }

    //订单信息修改动作
    @RequestMapping("admin/order/modify/handle")
    public @ResponseBody JSONObject goOrderModify( @RequestBody Car car){
        return  carService.updateCar(car);
    }





}
