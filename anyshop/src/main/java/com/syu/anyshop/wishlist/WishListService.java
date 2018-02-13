package com.syu.anyshop.wishlist;

import java.util.List;

public interface WishListService {

	void addWishList(String id);
	
	List<WishListInfo> viewWishList(String id);
	
}
