package org.car.service;

import com.alibaba.fastjson.JSONObject;
import org.car.domain.Store;

import java.util.List;

public interface StoreService {
    List<Store> getStoreList();

    JSONObject addStore(Store store);

    JSONObject getStore(long storeID);

    JSONObject updateStore(Store store);
}
