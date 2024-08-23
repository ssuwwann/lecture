package org.threefour.homelearn.admin.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReviewAdmin {
  private long id;
  private long courseId;
  private long studentId;
  private String content;
  private int score;
  private Date createdAt;
  private Date modifiedAt;
  private String courseName;
  private String nickName;
}