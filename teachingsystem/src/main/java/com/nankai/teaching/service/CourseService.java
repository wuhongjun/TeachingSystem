package com.nankai.teaching.service;

import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.Course;

public interface CourseService {
	
	public boolean saveCourse(Course course, String[] types);
	public Pagination<Course> getCourses(int typeId, String name, int pageIndex, int pageSize);
	public boolean deleteCourse(int courseId);

}
