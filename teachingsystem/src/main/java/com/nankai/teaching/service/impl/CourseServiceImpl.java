package com.nankai.teaching.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Maps;
import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.Course;
import com.nankai.teaching.service.CourseService;

/**
 * 课程相关服务
 * @author wangyafei
 *
 */
@Service
public class CourseServiceImpl extends BaseService implements CourseService{

	/**
	 * 保存新的课程
	 * @param course 课程
	 * @param types 课程的类型列表
	 * @return
	 */
	@Transactional
	public boolean saveCourse(Course course, String[] types){
		
		int i = getGenericBaseDAO().execute("course.saveCourse", course);
		if(i != 1){
			return false;
		}
		
		Map<String, Integer> params = Maps.newHashMap();
		params.put("courseId", course.getId());
		for(String type: types){
			int typeId = Integer.parseInt(type);
			params.put("typeId", typeId);
			i = getGenericBaseDAO().execute("course.saveCourseTypeRelation", params);
			if(i != 1){
				return false;
			}
		}
		
		return true;
	}
	
	/**
	 * 根据course类型和名称进行搜索
	 * @param typeId
	 * @param name
	 * @return
	 */
	@Transactional
	public Pagination<Course> getCourses(int typeId, String name, int pageIndex, int pageSize){
		
		Map<String, Object> params = Maps.newHashMap();
		params.put("name", name);
		params.put("typeId", typeId);
		Integer count = getGenericBaseDAO().executeForObject("course.countList", params, Integer.class);
		Pagination<Course> pageCourses = new Pagination<Course>(count, pageIndex, pageSize);
		List<Course> courses = getGenericBaseDAO().executeForObjectList("course.coursePageList", params, pageCourses.getStartPosition(), pageCourses.getPageSize());
		pageCourses.bindData(courses);
		
		return pageCourses;
	}
	
	/**
	 * 根据courseId删除相应的course相关信息
	 * @param courseId
	 * @return
	 */
	public boolean deleteCourse(int courseId){
		
		Map<String, Integer> params = Maps.newHashMap();
		params.put("courseId", courseId);
		int i = getGenericBaseDAO().execute("course.delete", params);
		if(i != 1){
			return false;
		}
		return true;
	}
	
}
