package org.threefour.homelearn.member.mapper;

import org.apache.ibatis.annotations.Param;
import org.threefour.homelearn.course.domain.CourseVO;
import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.dto.MemberResponseDTO;

import java.util.List;

public interface MemberMapper {
  int insertMember(MemberRequestDTO dto);

  MemberResponseDTO findByUsername(String username);

  int updateMemberByMemberId(MemberRequestDTO dto);

  // 나중에 courses랑 합치기
  List<CourseVO> selectCoursesWithPaging(@Param("memberId") Long memberId, @Param("startNum") int startNum);

  // 나중에 courses랑 합치기
  int countByMemberId(Long memberId);

}
