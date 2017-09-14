package com.woongjin.home.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.woongjin.home.dao.HomeDao;
import com.woongjin.home.search.HomeSearch;
import com.woongjin.home.vo.HomeVo;;

@Repository
public class HomeDaoImpl implements HomeDao{
   
	@Autowired
	@Resource(name="sqlSessionTemplate")
	private SqlSession query;
	
	private final static String MAPPER = "home.homeDao.";
	
	@Override
	public List<HomeVo> selectList(HomeSearch search){
		return query.selectList(MAPPER+"selectList", search);
	}
	
	@Override
	public int selectListCount(HomeSearch search) {
		return query.selectOne(MAPPER+"selectListCount",search);
	}

	@Override
	public HomeVo select(String param1) {
		// TODO Auto-generated method stub
		 return query.selectOne(MAPPER+"select",param1);
	}

	@Override
	public void insert(HomeVo vo) {
		// TODO Auto-generated method stub
		 query.insert(MAPPER+"insert",vo);
	}

	@Override
	public void update(HomeVo vo) {
		// TODO Auto-generated method stub
		query.update(MAPPER+"update",vo);
	}

	@Override
	public void delete(String param1) {
		// TODO Auto-generated method stub
		query.delete(MAPPER+"delete",param1);
	}


}
