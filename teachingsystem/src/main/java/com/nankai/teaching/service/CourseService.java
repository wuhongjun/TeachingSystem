package com.nankai.teaching.service;

import java.util.List;

import com.nankai.teaching.common.utils.Pagination;
import com.nankai.teaching.model.Course;

public interface CourseService {
	
	boolean saveCourse(Course course, String[] types);
	Pagination<Course> getCourses(int typeId, String name, int pageIndex, int pageSize);
	boolean deleteCourse(int courseId);
	List<Course> getRecentCourses();
}
