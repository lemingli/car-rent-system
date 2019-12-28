package org.car.controller;

import com.alibaba.fastjson.JSONObject;
import org.car.domain.CarType;
import org.car.domain.Store;
import org.car.service.CarService;
import org.car.service.StoreService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.car.domain.Car;
@Controller
public class CarController {
    @Resource
    private CarService carService;
    @Resource
    private StoreService storeService;

    /*************************************汽车管理部分*************************************/
    //汽车管理
    @RequestMapping("/admin/car-manage")
    public ModelAndView manageCar() {
        ModelAndView modelAndView = new ModelAndView("admin/car/car_manage");
        modelAndView.addObject("car", carService.getCarList());
        return modelAndView;
    }

    //新建汽车的页面
    @RequestMapping("/admin/car-add")
    public ModelAndView addCar() {
        return new ModelAndView("admin/car/car_add");
    }

    //新建汽车处理
    @RequestMapping("/admin/car-add-handle")
    public @ResponseBody
    JSONObject addCar(@RequestBody Car car) {
        return carService.addCar(car);
    }

    //汽车图片上传
    @RequestMapping("/admin/car/image/upload")
    public @ResponseBody JSONObject uploadCarImage(@RequestParam("file") MultipartFile[] files,
                                                  HttpServletRequest request, String imageCutParams, double rotate ) {
        FileUploadController fileUploadController = new FileUploadController();
        JSONObject imageObject = fileUploadController.saveFile( request, files, "/resources/car");
        return fileUploadController.saveAndCutImage(imageObject, imageCutParams, rotate);

    }

    //汽车信息修改页面
    @RequestMapping("admin/car/{carID}/modify")
    public ModelAndView goCarModifyPage( @PathVariable long carID ){
        ModelAndView modelAndView = new ModelAndView("admin/car/car_modify");
        modelAndView.addObject("car", carService.getCar(carID));
        return modelAndView;
    }

    //汽车信息修改动作
    @RequestMapping("admin/car/modify/handle")
    public @ResponseBody JSONObject goCarModify( @RequestBody Car car){
        return  carService.updateCar(car);
    }


    /*************************************车型管理部分*************************************/
    //车型管理
    @RequestMapping("/admin/car-type-manage")
    public ModelAndView manageCarType() {
        ModelAndView modelAndView = new ModelAndView("admin/car/car_type_manage");
        modelAndView.addObject("carType", carService.getCarTypeList());
        return modelAndView;
    }

    //新建车型的页面
    @RequestMapping("/admin/car-type-add")
    public ModelAndView addCarType() {
        return new ModelAndView("admin/car/car_type_add");
    }

    //新建车型处理
    @RequestMapping("/admin/car-type-add-handle")
    public @ResponseBody
    JSONObject addCarType(@RequestBody CarType carType) {
        return carService.addCarType(carType);
    }


    //车型信息修改页面
    @RequestMapping("admin/car/type/{carTypeID}/modify")
    public ModelAndView goCarTypeModifyPage( @PathVariable long carTypeID ){
        ModelAndView modelAndView = new ModelAndView("admin/car/car_modify");
        modelAndView.addObject("car", carService.getCarType(carTypeID));
        return modelAndView;
    }

    //车型信息修改动作
    @RequestMapping("admin/car/type/modify/handle")
    public @ResponseBody JSONObject goCarTypeModify( @RequestBody CarType carType){
        return  carService.updateCarType(carType);
    }

}
