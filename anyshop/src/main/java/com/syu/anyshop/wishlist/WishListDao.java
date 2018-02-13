package com.syu.anyshop.wishlist;

import java.util.List;

public interface WishListDao {

	void addWishList(String id);
	
	List<WishListInfo> viewWishList(String id);
}
