package com.nankai.teaching.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.google.common.collect.Maps;
import com.nankai.teaching.model.Column;
import com.nankai.teaching.service.CourseColumnService;


/**
 * 课程栏目相关服务
 * @author wangyafei
 *
 */
@Service
public class CourseColumnServiceImpl extends BaseService implements CourseColumnService{

	/**
	 * 保存一个新的栏目
	 * @param column
	 * @return
	 */
	public boolean saveColumn(Column column){
		
		int i = getGenericBaseDAO().execute("column.save", column);
		if(i != 1){
			return false;
		}
		return true;
	}
	
	/**
	 * 查询相应课程的相应栏目
	 * @param parentId
	 * @param courseId
	 * @return
	 */
	public List<Column> getColumns(int parentId, int courseId){
		
		Map<String, Integer> params = Maps.newHashMap();
		params.put("parentId", parentId);
		params.put("courseId", courseId);
		List<Column> columns = getGenericBaseDAO().executeForObjectList("column.getChildren", params);
		
		return columns;
	}
	
	/**
	 * 根据columnId删除相应的栏目以及相应子栏目
	 * @param columnId
	 * @return
	 */
	public boolean deleteColumn(int columnId){
		
		Map<String, Integer> params = Maps.newHashMap();
		params.put("columnId", columnId);
		int i = getGenericBaseDAO().execute("column.delete", params);
		if(i != 1){
			return false;
		}
		
		return true;
	}
	
}
