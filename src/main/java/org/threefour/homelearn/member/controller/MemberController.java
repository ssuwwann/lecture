package org.threefour.homelearn.member.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.Map;

@Controller
@RequestMapping("/members")
@RequiredArgsConstructor
@Slf4j
public class MemberController {

  private final MemberService memberService;

  @GetMapping("/signup")
  public String moveToSignup() {
    return "jsp/signup";
  }

  @PostMapping("/signup")
  public String signup(@Validated @ModelAttribute("memberRequestDTO") MemberRequestDTO dto, BindingResult errors, @RequestPart("profileImage") MultipartFile multipartFile) throws ServletException, IOException {
    if (errors.hasErrors()) {
      errors.getAllErrors().forEach(error -> System.out.println(error.getDefaultMessage()));
      return "jsp/signup"; // redirect 대신 뷰 이름을 반환
    }

    if (dto.getRole() == null) dto.setRole("ROLE_MEMBER");
    try {
      memberService.addMember(dto, multipartFile);
    } catch (DataIntegrityViolationException scv) {
      errors.rejectValue("email", "error.memberRequestDTO", "아이디 중복입니다.");
      return "jsp/signup";
    }

    return "redirect:/members/login";
  }

  @GetMapping("/login")
  public String moveToSignin() {
    return "jsp/login";
  }

  @GetMapping("/mypage/{memberid}")
  public String moveToMypage() {
    return "jsp/mypage";
  }

  @PostMapping("/mypage/{memberid}")
  public String updateMember(@PathVariable("memberid") Long memberId, MemberRequestDTO dto, @RequestPart("profileImage") MultipartFile multipartFile) throws ServletException, IOException {
    String password = dto.getPassword() == null ? "" : dto.getPassword();
    dto.setId(memberId);
    dto.setPassword(password);

    memberService.updateMemberByMemberid(dto, multipartFile);
    return "redirect:/members/mypage/" + memberId;
  }

  @GetMapping("/cookies")
  public void cookies(HttpServletRequest request, HttpServletResponse response) throws IOException {
    Cookie[] cookies = request.getCookies();
    for (Cookie cookie : cookies) {
      if (cookie.getName().startsWith("access")) {
        response.setHeader("accessToken", cookie.getValue());
        cookie.setMaxAge(0);
        cookie.setPath("/");
        cookie.setHttpOnly(true);
        response.addCookie(cookie);
      }
    }
  }

}
