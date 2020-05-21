package kr.inhatc.edelia.dto;

public class BDto {
	int mId;
	String mName;
	int mPrice;
	String mSize;
	String mNa;
	String mFat;
	String mSugar;
	String mPro;
	String mCa;
	String mImg;
	String mKind;
	
	public BDto() {
		
	}

	public BDto(int mId, String mName, int mPrice, String mSize, String mNa, String mFat, String mSugar, String mPro,
			String mCa, String mImg, String mKind) {
		super();
		this.mId = mId;
		this.mName = mName;
		this.mPrice = mPrice;
		this.mSize = mSize;
		this.mNa = mNa;
		this.mFat = mFat;
		this.mSugar = mSugar;
		this.mPro = mPro;
		this.mCa = mCa;
		this.mImg = mImg;
		this.mKind = mKind;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public int getmPrice() {
		return mPrice;
	}

	public void setmPrice(int mPrice) {
		this.mPrice = mPrice;
	}

	public String getmSize() {
		return mSize;
	}

	public void setmSize(String mSize) {
		this.mSize = mSize;
	}

	public String getmNa() {
		return mNa;
	}

	public void setmNa(String mNa) {
		this.mNa = mNa;
	}

	public String getmFat() {
		return mFat;
	}

	public void setmFat(String mFat) {
		this.mFat = mFat;
	}

	public String getmSugar() {
		return mSugar;
	}

	public void setmSugar(String mSugar) {
		this.mSugar = mSugar;
	}

	public String getmPro() {
		return mPro;
	}

	public void setmPro(String mPro) {
		this.mPro = mPro;
	}

	public String getmCa() {
		return mCa;
	}

	public void setmCa(String mCa) {
		this.mCa = mCa;
	}

	public String getmImg() {
		return mImg;
	}

	public void setmImg(String mImg) {
		this.mImg = mImg;
	}

	public String getmKind() {
		return mKind;
	}

	public void setmKind(String mKind) {
		this.mKind = mKind;
	}
	
	
}
