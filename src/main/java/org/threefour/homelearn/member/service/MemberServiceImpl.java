package org.threefour.homelearn.member.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.threefour.homelearn.course.domain.CourseVO;
import org.threefour.homelearn.file.FileUtil;
import org.threefour.homelearn.file.dto.AttachFile;
import org.threefour.homelearn.file.mapper.FileMapper;
import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.dto.MemberResponseDTO;
import org.threefour.homelearn.member.dto.MemberRole;
import org.threefour.homelearn.member.dto.Role;
import org.threefour.homelearn.member.mapper.MemberMapper;
import org.threefour.homelearn.member.mapper.MemberRoleMapper;
import org.threefour.homelearn.member.mapper.RoleMapper;
import org.threefour.homelearn.paging.Paging;

import javax.servlet.http.Part;
import java.io.File;
import java.util.*;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class MemberServiceImpl implements MemberService {

  private final MemberMapper memberMapper;
  private final RoleMapper roleMapper;
  private final MemberRoleMapper memberRoleMapper;
  private final PasswordEncoder passwordEncoder;
  private final FileMapper fileMapper;
  private final FileUtil fileUtil = new FileUtil();


  @Override
  public int addMember(MemberRequestDTO dto, MultipartFile multipartFile) {

    // Member 추가
    dto.setPassword(passwordEncoder.encode(dto.getPassword()));
    memberMapper.insertMember(dto);

    // MemberRole 추가
    MemberRole memberRole = new MemberRole();

    // Role 추가
    Role role = new Role();
    if (dto.getRole().startsWith("TEACHER")) {
      role = new Role();
      role.setRole("ROLE_TEACHER");
      roleMapper.insertRole(role);

      memberRole.setMemberId(dto.getId());
      memberRole.setRoleId(role.getId());
      memberRoleMapper.insertMemberRole(memberRole);
    }

    role.setRole("ROLE_MEMBER");
    roleMapper.insertRole(role);

    memberRole.setMemberId(dto.getId());
    memberRole.setRoleId(role.getId());
    int result = memberRoleMapper.insertMemberRole(memberRole);

    if (result > 0) {
      List<AttachFile> attachFiles = fileUtil.fileSave(multipartFile, dto.getId());
      if (attachFiles != null)
        fileMapper.insertFile(attachFiles);
    }

    return result;
  }

  @Override
  public void updateMemberByMemberid(MemberRequestDTO dto, MultipartFile multipartFile) {

    String password = dto.getPassword();
    if (password != null)
      dto.setPassword(passwordEncoder.encode(dto.getPassword()));

    memberMapper.updateMemberByMemberId(dto);

    List<AttachFile> attachFiles = fileMapper.getProfileImageByMemberId(dto.getId());

    // 업데이트시 기본 -> 이미지변경
    if (attachFiles.isEmpty()) {
      List<AttachFile> updateAttachFile = fileUtil.fileSave(multipartFile, dto.getId());
      if (updateAttachFile != null)
        fileMapper.insertFile(updateAttachFile);
      return;
    }

    // 수정
    for (AttachFile attachFile : attachFiles) {
      File f = new File(attachFile.getFilePath() + File.separator + attachFile.getSaveName());
      if (f.exists()) {
        List<AttachFile> updateAttachFile = fileUtil.fileSave(multipartFile, dto.getId());
        if (updateAttachFile != null) {
          fileMapper.insertFile(updateAttachFile);
          fileMapper.deleteFile(attachFile.getSaveName());
          f.delete();
        }
      }
    }
  }

  @Override
  public void deleteMemberByMemberid(Long memberId) {

  }

  @Override
  public List<CourseVO> findCoursesWithPagin(Long memberId, int cp) {
    int startNum = cp * 4;
    List<CourseVO> list = memberMapper.selectCoursesWithPaging(memberId, startNum);

    return list;
  }

  @Override
  public int countByMemberId(Long memberId) {
    return 0;
  }
}
