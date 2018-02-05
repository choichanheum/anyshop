package com.syu.anyshop.wishlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WishListServiceImpl implements WishListService{
	
	@Autowired
	private WishListDao wishlistDao;
	

	@Override
	public void addWishList(String id) {		
		wishlistDao.addWishList(id);		
	}

	@Override
	public WishListInfo viewWishList(String id) {
		return wishlistDao.viewWishList(id);	
	}



	
	

}
