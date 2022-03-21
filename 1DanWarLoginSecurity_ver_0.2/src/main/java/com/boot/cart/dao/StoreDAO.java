package com.boot.cart.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.boot.cart.vo.StoreVO;

@Mapper
public interface StoreDAO {
	public List<StoreVO> burgerkingAllMenu();
	public StoreVO burgerkingMenu(String food);
	public int burgerkingInsertMenu(String food, String price);
	public int burgerkingDeleteMenu(String food);
	public int burgerkingUpdateMenu(String food, String price);
	
	public List<StoreVO> mcdonaldAllMenu();
	public StoreVO mcdonaldMenu(String food);
	public int mcdonaldInsertMenu(String food, String price);
	public int mcdonaldDeleteMenu(String food);
	public int mcdonaldUpdateMenu(String food, String price);
	
	public List<StoreVO> cartAllMenu();
	public StoreVO cartMenu(String food);
	public int cartInsertMenu(String food, String price);
	public int cartDeleteMenu(String food);
 	
}