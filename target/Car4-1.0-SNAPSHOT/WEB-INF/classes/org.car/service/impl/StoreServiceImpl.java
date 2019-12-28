package org.car.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.car.dao.StoreDao;
import org.car.dao.SysDao;
import org.car.domain.Store;
import org.car.service.StoreService;
import org.car.util.JsonUtil;
import org.car.util.ToolUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("storeServiceImpl")
public class StoreServiceImpl implements StoreService {
    @Resource
    StoreDao storeDao;

    @Resource
    private SysDao sysDao;

    @Override
    public JSONObject addStore(Store store) {

        store.setStore_id(generateID("store", "store_id", 10000000));

        if( storeDao.addStore(store) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(store)));
        }else{
            return JsonUtil.getResult(500, "失败", new JSONObject());
        }

    }

    @Override
    public List<Store> getStoreList() {
        return storeDao.getStoreList();
    }

    @Override
    public JSONObject getStore(long storeID) {
        return JSONObject.parseObject(JSON.toJSONString(storeDao.getStore(storeID)));
    }

    @Override
    public JSONObject updateStore(Store store) {
        if( storeDao.updateStore(store) == 1 ){
            return JsonUtil.getResult(200, "成功", JSONObject.parseObject(JSON.toJSONString(store)));
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
