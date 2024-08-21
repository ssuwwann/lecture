package org.threefour.homelearn.chapter.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Chapter {

	private long id;
	private long courseId;
	private String url;
	private String name;
	private int runningTime;
	private LocalDateTime createdAt;
	private LocalDateTime ModifiedAt;
	
}
