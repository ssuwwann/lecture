package org.threefour.homelearn.course.domain;

import java.sql.Date;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Course {

	private long id;
	private long subjectId;
	private long teacherId;
	private long imageId;
	private String name;
	private String description;
	private int price;
	private int period;
	private String ffname;
	private String fname;
	private String ofname;
	private String fsize;
	private Date createdAt;
	private Date modifiedAt;
}
