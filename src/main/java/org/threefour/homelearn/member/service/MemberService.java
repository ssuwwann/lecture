package org.threefour.homelearn.member.service;

import org.springframework.validation.Errors;
import org.springframework.web.multipart.MultipartFile;
import org.threefour.homelearn.course.domain.CourseVO;
import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.dto.MemberResponseDTO;

import javax.servlet.http.Part;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface MemberService {
  int addMember(MemberRequestDTO dto, MultipartFile multipartFile);

  void updateMemberByMemberid(MemberRequestDTO dto, MultipartFile multipartFile);

  void deleteMemberByMemberid(Long memberId);

  // courses랑 합치기
  List<CourseVO> findCoursesWithPagin(Long memberId, int startPage);

  // courses랑 합치기
  int countByMemberId(Long memberId);

}
