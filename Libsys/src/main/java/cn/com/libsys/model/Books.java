package cn.com.libsys.model;

/**
 * 书本
 * @author xuzhi
 *
 */
public class Books {
	/**
	 * 书本id
	 */
	private String id;
	/**
	 * 书本序列号
	 */
	private String isbn;
	/**
	 * 书本名
	 */
	private String name;
	/**
	 * 书本价格
	 */
	private String price;
	/**
	 * 出版商
	 */
	private String publish;
	/**
	 * 作者
	 */
	private String authors;
	/**
	 * 种类
	 */
	private String type;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getAuthors() {
		return authors;
	}
	public void setAuthors(String authors) {
		this.authors = authors;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	

	
}
