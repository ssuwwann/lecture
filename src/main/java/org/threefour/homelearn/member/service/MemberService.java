package org.threefour.homelearn.member.service;

import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.dto.MemberResponseDTO;

import javax.servlet.http.Part;
import java.util.Collection;

public interface MemberService {
  int addMember(MemberRequestDTO dto, Collection<Part> parts);

  MemberResponseDTO updateMemberByMemberid(MemberRequestDTO dto, Collection<Part> parts);
}
