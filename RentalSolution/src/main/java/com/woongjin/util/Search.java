package com.woongjin.util;

public class Search {
	
	   private int pageIndex = 1; //페이지 인덱스
	   private int startRowIndex = 0; // 시작 레코드 인덱스
	   private int endRowIndex = 0; // 종료 레코드 인덱스
	   private int pageCount = 0; // 페이지 전체 수
	   private int recordCount = 0; // 전체 갯수
	   private int currentCount = 0; // 현재 갯수
	   private int pagePerRecord = 10; // 페이지당 레코드 갯수
	   
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getStartRowIndex() {
		return startRowIndex;
	}
	public void setStartRowIndex(int startRowIndex) {
		this.startRowIndex = startRowIndex;
	}
	public int getEndRowIndex() {
		return endRowIndex;
	}
	public void setEndRowIndex(int endRowIndex) {
		this.endRowIndex = endRowIndex;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
	public int getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(int currentCount) {
		this.currentCount = currentCount;
	}
	public int getPagePerRecord() {
		return pagePerRecord;
	}
	public void setPagePerRecord(int pagePerRecord) {
		this.pagePerRecord = pagePerRecord;
	}
	
	// 계산
	public void calculate(Integer recordCount) {
		this.recordCount = recordCount;
		
		//레코드가 존재 하면
		if(recordCount >0) {
			if(this.pageIndex==0) {
				this.pageIndex = 1;
			}
			
			// 실제 페이지 갯수 구함
			this.pageCount = recordCount / this.pagePerRecord + (recordCount % this.pagePerRecord > 0 ? 1: 0);
			
			if(this.pageCount < this.pageIndex) {
				this.pageIndex = this.pageCount;
			}
			
			this.startRowIndex = this.pageIndex > 1 ? (this.pageIndex - 1)*this.pagePerRecord : 0;
			
			this.currentCount = this.pageIndex * this.pagePerRecord;
			
			if(this.currentCount > recordCount) {
				this.currentCount = recordCount;
			}
		}else {
			this.pageIndex = 0;
		}
	}
	   
}
