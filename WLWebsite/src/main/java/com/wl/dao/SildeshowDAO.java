package com.wl.dao;

import com.wl.common.Pager;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曾志湖 on 2018/3/5.
 * 首页轮播图
 */
@Repository
public interface SildeshowDAO extends BaseDAO{

    @Override
    List<Object> listPager(@Param("pager") Pager pager);

    @Override
    Object getById(Long id);
}
