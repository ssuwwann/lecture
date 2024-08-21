package org.threefour.homelearn.member.mapper;

import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.dto.MemberResponseDTO;

public interface MemberMapper {
  int insertMember(MemberRequestDTO dto);

  MemberResponseDTO findByUsername(String username);

  MemberResponseDTO updateMemberByMemberid(MemberRequestDTO dto);

}
