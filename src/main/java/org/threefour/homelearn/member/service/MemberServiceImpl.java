package org.threefour.homelearn.member.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
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

import javax.servlet.http.Part;
import java.io.File;
import java.util.Collection;
import java.util.List;

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
  public int addMember(MemberRequestDTO dto, @RequestParam("profileImage") Collection<Part> parts) {


    // Member 추가
    dto.setPassword(passwordEncoder.encode(dto.getPassword()));
    memberMapper.insertMember(dto);

    // MemberRole 추가
    MemberRole memberRole = new MemberRole();

    // Role 추가
    Role role = new Role();
    if (dto.getRole() == null || dto.getRole().startsWith("TEACHER")) {
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
      for (Part part : parts) {
        if (part.getSubmittedFileName() != null && part.getSubmittedFileName().length() > 1) {
          List<AttachFile> attachFiles = fileUtil.fileSave(parts, dto.getId());

          fileMapper.insertFile(attachFiles);
        }
      }
    }

    return result;
  }

  @Override
  public MemberResponseDTO updateMemberByMemberid(MemberRequestDTO dto, Collection<Part> parts) {
    // 비밀번호가 공백일 땐, 아닐 때는 매퍼에서 처리
    // 이미지도 공백인 경우 변경 x
    //fileUtil
    String password = dto.getPassword();
    if (password != null)
      dto.setPassword(passwordEncoder.encode(dto.getPassword()));

    memberMapper.updateMemberByMemberid(dto);

    List<AttachFile> attachFiles = fileMapper.selectFileByMemberId(dto.getId());

    // 업데이트시 기본 -> 이미지변경
    boolean flag = false;
    for (Part part : parts) {
      if (attachFiles.isEmpty()) {
        List<AttachFile> updateAttachFile = fileUtil.fileSave(parts, dto.getId());
        fileMapper.insertFile(updateAttachFile);
        break;
      }
      for (AttachFile attachFile : attachFiles) {
        if (attachFile.getOriginalName() == part.getSubmittedFileName()) {
          flag = true;
          break;
        }
      }
    }

    // 수정
    if (!flag && !attachFiles.isEmpty()) {
      for (AttachFile attachFile : attachFiles) {
        File f = new File(attachFile.getFilePath() + File.separator + attachFile.getSaveName());
        if (f.exists()) {
          f.delete();
          fileMapper.deleteFile(attachFile.getSaveName());
          List<AttachFile> updateAttachFile = fileUtil.fileSave(parts, dto.getId());
          fileMapper.insertFile(updateAttachFile);
          break;
        }
      }
    }
    return null;
  }
}
