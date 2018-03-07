package com.wl.dao;

import com.wl.bean.Dynamic;
import com.wl.common.Pager;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * create by 曾志湖 on 2018/03/07
 * */
@Repository
public interface DynamicDAO extends BaseDAO {
    @Override
    List<Object> listPagerCriteria(@Param("pager") Pager pager, @Param("query") Object obj);

    @Override
    Long countCriteria(@Param("query") Object obj);

    List<Object> listPager(@Param("pager") Pager pager);
    void updateStatus(Dynamic dynamic);

}
