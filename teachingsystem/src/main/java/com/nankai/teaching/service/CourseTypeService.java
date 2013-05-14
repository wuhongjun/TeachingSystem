package com.nankai.teaching.service;

import java.util.List;

import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.CourseType;

public interface CourseTypeService {
	
	boolean saveCourseType(CourseType courseType);
	Pagination<CourseType> getCourseTypes(String name, int pageIndex, int pageSize);
	List<CourseType> getRecentCourseTypes();

}
