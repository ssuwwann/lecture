package org.threefour.homelearn.admin.service;

import org.threefour.homelearn.admin.domain.*;

import java.util.List;

public interface AdminService {
  List<MemberAdmin> memberList();
  List<CoursesAdmin> courseList();
  List<ReviewAdmin> reviewList();
  List<CourseMemberAdmin> courseMemberList(long courseId);

  /* Dash-Board */
  int todaySubscriber();
  int totalSubscriber();
  List<RateSubjectAdmin> rateSubjectList();
  List<RankingSubjectAdmin> rankingSubjectList();
}