package com.kh.board.model.vo;

public class PageInfo {

	private int currentPage;
	private int listCount;
	private int pageLimit=5;
	private int boardLimit=10;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int startRow;
	private int endRow;
	
	public PageInfo(int currentPage,int listCount) {
		this.currentPage=currentPage;
		this.listCount=listCount;
		this.maxPage=(int)Math.ceil((double)listCount/boardLimit);
		this.startPage=((currentPage-1)/pageLimit)*pageLimit+1;
		this.endPage=Math.min(startPage+pageLimit-1,maxPage);
		this.startRow=currentPage*boardLimit;
		this.endRow=(currentPage-1)*boardLimit+1;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getListCount() {
		return listCount;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getBoardLimit() {
		return boardLimit;
	}

	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	@Override
	public String toString() {
		return "PageInfo [currentPage=" + currentPage + ", listCount=" + listCount + ", pageLimit=" + pageLimit
				+ ", boardLimit=" + boardLimit + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage="
				+ endPage + ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}


}