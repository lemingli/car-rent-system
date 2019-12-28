package org.car.controller;

import org.car.service.CarService;
import org.car.service.StoreService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class ViewRedirectController {
    @Resource
    private CarService carService;
    @Resource
    private StoreService storeService;
    @RequestMapping("/")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("storeList", storeService.getStoreList());

        mav.setViewName("/index");
        return mav;
    }
    @RequestMapping("/signin")
    public ModelAndView signin(String signin_message) {
        ModelAndView mav = new ModelAndView();

        if( signin_message!=null){
            if( signin_message.equals("1") ){
                signin_message = "邮箱激活成功，请登录！";
            }
            mav.addObject("signin_message",signin_message);
        }

        mav.setViewName("account/login");
        return mav;
    }



    @RequestMapping("/register")
    public ModelAndView register() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("account/login");
        mav.addObject("register","true");
        return mav;
    }

    @RequestMapping("/order")
    public ModelAndView Order() {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("dingdan");
        return mav;
    }
    @RequestMapping("/my-order")
    public ModelAndView MyOrder() {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("my_dingdan");
        return mav;
    }
    @RequestMapping("/my-info")
    public ModelAndView MyInfo() {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("user_info");
        return mav;
    }

    @RequestMapping("/employee-info")
    public ModelAndView EmployeeInfo() {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("admin/employee/employee_info");
        return mav;
    }
//
//    @RequestMapping("/select-car/{car_model}")
//    public ModelAndView selectCar(@PathVariable  String car_model) {
//        ModelAndView mav = new ModelAndView();
//        mav.addObject("car", carService.getCarListByType(car_model));
//
//        mav.setViewName("select_car");
//        return mav;
//    }



}
