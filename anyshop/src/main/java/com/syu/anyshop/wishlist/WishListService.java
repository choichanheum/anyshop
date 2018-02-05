package com.syu.anyshop.wishlist;

import java.util.List;

public interface WishListService {

	void addWishList(String id);
	
	WishListInfo viewWishList(String id);
	
}
