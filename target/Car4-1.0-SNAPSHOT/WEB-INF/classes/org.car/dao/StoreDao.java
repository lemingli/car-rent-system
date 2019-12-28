package org.car.dao;

import org.car.domain.Store;

import java.util.List;

public interface StoreDao {
    int addStore(Store store);

    List<Store> getStoreList();

    Store getStore(long storeID);

    int updateStore(Store store);
}
