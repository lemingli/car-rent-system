package org.car.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface CityDao {
    String queryById(String id);
}
