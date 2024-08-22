package org.threefour.homelearn.member.service;

import org.springframework.web.multipart.MultipartFile;
import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.dto.MemberResponseDTO;

import javax.servlet.http.Part;
import java.util.Collection;

public interface MemberService {
  int addMember(MemberRequestDTO dto, MultipartFile multipartFile);

  void updateMemberByMemberid(MemberRequestDTO dto, MultipartFile multipartFile);
}
