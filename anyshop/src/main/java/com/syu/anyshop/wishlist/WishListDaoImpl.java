package com.syu.anyshop.wishlist;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WishListDaoImpl implements WishListDao{
	String ns ="com.syu.anyshop.wishlist.WishListDao.";
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public void addWishList(String id) {
		
		sqlSession.insert("ns" + "addWishList", id);
	}



	@Override
	public List<WishListInfo> viewWishList(String id) {
		
		List<WishListInfo> list= new ArrayList<WishListInfo>();
		
		list= sqlSession.selectList(ns+"viewWishList", id);
		
		return list;
	}

}
