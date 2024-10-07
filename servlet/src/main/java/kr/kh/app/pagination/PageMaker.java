package kr.kh.app.pagination;

import lombok.Data;

@Data
public class PageMaker {
	private int startPage;
	private int endPage;
	private int totalCount;
	private int displayPageNum;
	private boolean prev;
	private boolean next;
	private Criteria cri;
	
	public void calculte() {
		endPage = (int)(Math.ceil(cri.getPage()/(double)displayPageNum) * displayPageNum);
		startPage = endPage - displayPageNum + 1;
		int lastEndPage = (int)(Math.ceil(totalCount / (double)cri.getPerPageNum()));
		
		if(endPage > lastEndPage) {
			endPage = lastEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage == lastEndPage ? false : true;
	}

	public PageMaker(int totalCount, int displayPageNum, Criteria cri) {
		this.totalCount = totalCount;
		this.displayPageNum = displayPageNum;
		this.cri = cri;
		calculte();
	}
}