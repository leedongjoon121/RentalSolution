package com.woongjin.home.service;
import java.util.List;

import org.springframework.stereotype.Service;

import com.woongjin.home.search.HomeSearch;
import com.woongjin.home.vo.HomeVo;

@Service
public interface HomeService {

public List<HomeVo> selectList(HomeSearch search);


public int selectListCount(HomeSearch search);

 public HomeVo select(String param1);
   
   public void insert(HomeVo vo);
   
   public void update(HomeVo vo);
   
   public void delete(String param1);
   
}
