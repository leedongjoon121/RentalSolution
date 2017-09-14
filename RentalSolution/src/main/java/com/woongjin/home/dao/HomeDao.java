package com.woongjin.home.dao;

import java.util.List;

import com.woongjin.home.search.HomeSearch;
import com.woongjin.home.vo.HomeVo;;

public interface HomeDao {
   public List<HomeVo> selectList(HomeSearch search); 
   
   public int selectListCount(HomeSearch search);
   /*
    * 상세
    * 
    * */
   public HomeVo select(String param1);
   
   public void insert(HomeVo vo);
   
   public void update(HomeVo vo);
   
   public void delete(String param1);
  
}
