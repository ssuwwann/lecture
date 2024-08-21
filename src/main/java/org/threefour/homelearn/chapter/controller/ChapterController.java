package org.threefour.homelearn.chapter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.threefour.homelearn.chapter.domain.Chapter;
import org.threefour.homelearn.chapter.service.ChapterService;
import org.threefour.homelearn.course.domain.Course;
import org.threefour.homelearn.course.domain.Pager;
import org.threefour.homelearn.course.service.CourseService;

@Controller
public class ChapterController {

	@Autowired
	private ChapterService chapterService;
	@Autowired
	private CourseService courseService;
	
	@GetMapping("/chapterForm.do")
	public ModelAndView courseForm(String courseId) {
		ModelAndView view = new ModelAndView();
		long id =0L;
		if(courseId != null || courseId != "") {
			id = Long.parseLong(courseId);
		}
		Course course = courseService.courseDetail(id);
		view.addObject("course", course);
		view.setViewName("chapter");
		
		return view;
	}
	
	@PostMapping("/chapterWrite.do")
	public String courseSearch(Chapter chapter) {
		System.out.println("chapterWrite :: " + chapter.getUrl());
		System.out.println("chapterRuNNINGTIME :: " + chapter.getRunningTime());
		String chapterUrl = chapter.getUrl();
		String[] urls = chapterUrl.split(",");
		for(int i=0;i<urls.length;i++) {
			chapter.setUrl(urls[i]);
			chapterService.insert(chapter);
		}
		return "redirect:coursesList.do?pageNum=1&pageSize=3&blockSize=3";
	}
}
