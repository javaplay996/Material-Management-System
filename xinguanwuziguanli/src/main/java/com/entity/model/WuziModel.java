package com.entity.model;

import com.entity.WuziEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 物资
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class WuziModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 物资编号
     */
    private String wuziUuidNumber;


    /**
     * 物资名称
     */
    private String wuziName;


    /**
     * 物资类型
     */
    private Integer wuziTypes;


    /**
     * 物资库存
     */
    private Integer wuziKucunNumber;


    /**
     * 物资详情
     */
    private String wuziContent;


    /**
     * 逻辑删除
     */
    private Integer wuziDelete;


    /**
     * 录入时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：物资编号
	 */
    public String getWuziUuidNumber() {
        return wuziUuidNumber;
    }


    /**
	 * 设置：物资编号
	 */
    public void setWuziUuidNumber(String wuziUuidNumber) {
        this.wuziUuidNumber = wuziUuidNumber;
    }
    /**
	 * 获取：物资名称
	 */
    public String getWuziName() {
        return wuziName;
    }


    /**
	 * 设置：物资名称
	 */
    public void setWuziName(String wuziName) {
        this.wuziName = wuziName;
    }
    /**
	 * 获取：物资类型
	 */
    public Integer getWuziTypes() {
        return wuziTypes;
    }


    /**
	 * 设置：物资类型
	 */
    public void setWuziTypes(Integer wuziTypes) {
        this.wuziTypes = wuziTypes;
    }
    /**
	 * 获取：物资库存
	 */
    public Integer getWuziKucunNumber() {
        return wuziKucunNumber;
    }


    /**
	 * 设置：物资库存
	 */
    public void setWuziKucunNumber(Integer wuziKucunNumber) {
        this.wuziKucunNumber = wuziKucunNumber;
    }
    /**
	 * 获取：物资详情
	 */
    public String getWuziContent() {
        return wuziContent;
    }


    /**
	 * 设置：物资详情
	 */
    public void setWuziContent(String wuziContent) {
        this.wuziContent = wuziContent;
    }
    /**
	 * 获取：逻辑删除
	 */
    public Integer getWuziDelete() {
        return wuziDelete;
    }


    /**
	 * 设置：逻辑删除
	 */
    public void setWuziDelete(Integer wuziDelete) {
        this.wuziDelete = wuziDelete;
    }
    /**
	 * 获取：录入时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：录入时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
