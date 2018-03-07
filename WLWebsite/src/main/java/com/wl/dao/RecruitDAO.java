package com.wl.dao;

import com.wl.common.Pager;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曾志湖 on 2018/3/6.
 * 招贤纳士
 */
@Repository
public interface RecruitDAO extends BaseDAO{

    @Override
    Object getById(Long id);

    @Override
    List<Object> listPager(@Param("pager") Pager pager);

    @Override
    List <Object> listPagerCriteria(@Param("pager") Pager pager, @Param("query") Object obj);

    @Override
    Long countCriteria(@Param("query") Object obj);

}
