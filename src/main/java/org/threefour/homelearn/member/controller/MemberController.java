package org.threefour.homelearn.member.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.Collection;

@Controller
@RequestMapping("/members")
@RequiredArgsConstructor
@Slf4j
@MultipartConfig(
        maxFileSize = 1024 * 1024 * 5
)
public class MemberController {

  private final MemberService memberService;

  @GetMapping("/signup")
  public String moveToSignup() {
    return "jsp/signup";
  }

  @PostMapping("/signup")
  public String signup(HttpServletRequest request) throws ServletException, IOException {
    MemberRequestDTO dto = MemberRequestDTO.builder()
            .email(request.getParameter("email"))
            .password(request.getParameter("password"))
            .nickname(request.getParameter("nickname"))
            .role(request.getParameter("role"))
            .build();

    Collection<Part> parts = request.getParts();
    memberService.addMember(dto, parts);

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
  public String updateMember(@PathVariable("memberid") Long memberId, HttpServletRequest request) throws ServletException, IOException {
    // 이미지 처리,
    String email = request.getParameter("email");
    String nickname = request.getParameter("nickname");
    String password = request.getParameter("password") == null ? "" : request.getParameter("password");
    Collection<Part> parts = request.getParts();

    MemberRequestDTO dto = MemberRequestDTO.builder()
            .id(memberId)
            .email(email)
            .password(password)
            .nickname(nickname)
            .build();

    memberService.updateMemberByMemberid(dto, parts);
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
