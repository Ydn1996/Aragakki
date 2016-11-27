package cn.com.libsys.model;

import java.util.Date;

/**
 * 用户
 * @author xuzhi
 *
 */
public class User {
	/**
	 * 用户id
	 */
	private String id;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 用户登录密码
	 */
	private String password;
	/**
	 * 用户权限 0：管理员  ； 1：普通用户
	 */
	private Integer level;
	/**
	 * 创建者id
	 */
	private String cid;
	/**
	 * 创建时间
	 */
	private Date createtime;
	/**
	 * 修改者id
	 */
	private String uid;
	/**
	 * 修改时间
	 */
	private Date updatetime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	

}
