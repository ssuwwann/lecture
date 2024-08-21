package org.threefour.homelearn.chapter.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.threefour.homelearn.chapter.domain.Chapter;
import org.threefour.homelearn.chapter.mapper.ChapterMapper;

@Service
public class ChapterServiceImpl implements ChapterService{

	@Autowired
	private ChapterMapper chapterMapper;

	@Override
	public void insert(Chapter chapter) {
		chapterMapper.insert(chapter);
	}

}
