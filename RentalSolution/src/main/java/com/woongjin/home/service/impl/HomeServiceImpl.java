package com.woongjin.home.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woongjin.home.dao.HomeDao;
import com.woongjin.home.search.HomeSearch;
import com.woongjin.home.service.HomeService;
import com.woongjin.home.vo.HomeVo;

@Service
public class HomeServiceImpl implements HomeService {
   @Autowired
   private HomeDao homeDao;
   
   @Override
   public List<HomeVo> selectList(HomeSearch search){
	   return homeDao.selectList(search);
   }


@Override
public HomeVo select(String param1) {
	// TODO Auto-generated method stub
	return homeDao.select(param1);
}

@Override
public void insert(HomeVo vo) {
	// TODO Auto-generated method stub
	homeDao.insert(vo);
	
}

@Override
public void update(HomeVo vo) {
	// TODO Auto-generated method stub
	homeDao.update(vo);
}

@Override
public void delete(String param1) {
	// TODO Auto-generated method stub
	homeDao.delete(param1);
}




@Override
public int selectListCount(HomeSearch search) {
	return homeDao.selectListCount(search);
}

//@Override
//public int deleteAll() {
//	// TODO Auto-generated method stub
//	return homeDao.deleteAll();
//}

   
}
