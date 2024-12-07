package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.FacultyCourseMapping;

public interface FacultyCourseMappingRepository extends JpaRepository<FacultyCourseMapping,Integer>{
	
}
