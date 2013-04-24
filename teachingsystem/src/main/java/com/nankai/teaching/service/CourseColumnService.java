package com.nankai.teaching.service;

import java.util.List;

import com.nankai.teaching.model.Column;

public interface CourseColumnService {
	
	boolean saveColumn(Column column);
	List<Column> getColumns(int parentId, int courseId);
	boolean deleteColumn(int columnId);
	
}
