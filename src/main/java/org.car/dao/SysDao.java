package org.car.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface SysDao {

    //判断某条记录是否存在
    int queryRowsNumberByParameters( String table, String field, String field_value );

    int queryRowsNumber( String table );

    long getMaxNumber(String table, String field);
}
