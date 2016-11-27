package cn.com.libsys.model;

public class Page{
	/**
	 * 起始页数
	 */
	private Integer page=1;
	/**
	 * 每一页的条数
	 */
	private Integer size=5;
	/**
	 * 总共的数据量
	 */
	private Integer totalPage;
	/**
	 * 返回页中数据的对象
	 */
	private Object pageObject;
	/**
	 * 前一页的页数
	 */
	private Integer Before;
	
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Object getPageObject() {
		return pageObject;
	}
	public void setPageObject(Object pageObject) {
		this.pageObject = pageObject;
	}
	public Integer getBefore() {
		return Before;
	}
	public void setBefore(Integer before) {
		Before = before;
	}

}
