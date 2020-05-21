package kr.inhatc.edelia.dao;

import java.util.ArrayList;

import kr.inhatc.edelia.dto.BDto;

public interface IDao {
	public ArrayList<BDto> list();
	public BDto modify_view(String mId);
	public void enroll(String mName, Integer mPrice, String mSize, String mNa, String mFat, String mSugar, String mPro, String mCa, String mImg, String mKind);
	public void modify(String mName, Integer mPrice, String mSize, String mNa, String mFat, String mSugar, String mPro, String mCa, String mImg, String mKind, String mId);
	public void join(String uId, String uPassword, String uName, String uHp, String uEmail);
	public ArrayList<BDto> coffee_menu();
	public ArrayList<BDto> a_coffee_menu();
	public ArrayList<BDto> dessert_menu();
	public ArrayList<BDto> a_dessert_menu();
	public ArrayList<BDto> drink_tea_menu();
	public ArrayList<BDto> a_drink_tea_menu();
}
