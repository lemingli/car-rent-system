package org.car.controller;

import com.alibaba.fastjson.JSONObject;
import org.car.domain.Store;
import org.car.service.StoreService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class StoreController {
    @Resource
    private StoreService storeService;
    /*************************************门店管理部分*************************************/
    //门店管理
    @RequestMapping("/admin/store-manage")
    public ModelAndView manageStore() {
        ModelAndView modelAndView = new ModelAndView("admin/store/store_manage");
        modelAndView.addObject("store", storeService.getStoreList());
        return modelAndView;
    }

    //新建门店的页面
    @RequestMapping("/admin/store-add")
    public ModelAndView addStore() {
        return new ModelAndView("admin/store/store_add");
    }

    //新建门店处理
    @RequestMapping("/admin/store-add-handle")
    public @ResponseBody
    JSONObject addCar(@RequestBody Store store) {
        return storeService.addStore(store);
    }

    //门店图片上传
    @RequestMapping("/admin/store/image/upload")
    public @ResponseBody JSONObject uploadCarImage(@RequestParam("file") MultipartFile[] files,
                                                   HttpServletRequest request, String imageCutParams, double rotate ) {
        FileUploadController fileUploadController = new FileUploadController();
        JSONObject imageObject = fileUploadController.saveFile( request, files, "/resources/store");
        return fileUploadController.saveAndCutImage(imageObject, imageCutParams, rotate);

    }

    //门店信息修改页面
    @RequestMapping("admin/store/{storeID}/modify")
    public ModelAndView goCarModifyPage( @PathVariable long storeID ){
        ModelAndView modelAndView = new ModelAndView("admin/store/store_modify");
        modelAndView.addObject("store", storeService.getStore(storeID));
        return modelAndView;
    }

    //门店信息修改动作
    @RequestMapping("admin/store/modify/handle")
    public @ResponseBody JSONObject goStoreModify( @RequestBody Store store){
        return  storeService.updateStore(store);
    }


}
