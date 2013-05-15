package com.nankai.teaching.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.google.common.collect.Maps;
import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.CourseType;
import com.nankai.teaching.service.CourseTypeService;

/**
 * 
 * @author wangyafei
 * 
 */
@Service
public class CourseTypeServiceImpl extends BaseService implements CourseTypeService {

	/**
	 * 保存一个新的课程类型
	 * 
	 * @param courseType
	 * @return
	 */
	public boolean saveCourseType(CourseType courseType) {

		int i = getGenericBaseDAO().execute("courseType.save", courseType);
		if (i != 1) {
			return false;
		}
		return true;
	}

	/**
	 * 分页查询课程分类列表
	 * 
	 * @param name
	 *            模糊查询条件
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	public Pagination<CourseType> getCourseTypes(String name, int pageIndex, int pageSize) {
		
		Map<String, String> params = Maps.newHashMap();
		params.put("name", name);
		Integer count = getGenericBaseDAO().executeForObject("courseType.countList", params, Integer.class);
		Pagination<CourseType> pageTypes = new Pagination<CourseType>(count, pageIndex, pageSize);
		List<CourseType> courseTypes = getGenericBaseDAO().executeForObjectList("courseType.typePageList", params, pageTypes.getStartPosition(), pageTypes.getPageSize());
		pageTypes.bindData(courseTypes);
		
		return pageTypes;
	}

	/**
	 * 获取最近的四个课程类型
	 */
	public List<CourseType> getRecentCourseTypes() {
		List<CourseType> courseTypes = getGenericBaseDAO().executeForObjectList("courseType.recent", null);
		return courseTypes;
	}

	@Override
	public List<CourseType> getAllCourseTypes() {
		List<CourseType> courseTypes = getGenericBaseDAO().executeForObjectList("courseType.all", null);
		return courseTypes;
	}

}
