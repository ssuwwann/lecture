package org.threefour.homelearn.member.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.threefour.homelearn.member.dto.MemberRequestDTO;
import org.threefour.homelearn.member.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.validation.Valid;
import java.io.IOException;
import java.util.Collection;

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
  public String signup(@Valid MemberRequestDTO dto, @RequestPart("profileImage") MultipartFile multipartFile, BindingResult result) throws ServletException, IOException {
    System.out.println("나 뭐한거지" + dto);
    System.out.println("?? " + multipartFile.getName());

    if (result.hasErrors()) {
      return "redirect:/members/signup";
    }
    memberService.addMember(dto, multipartFile);

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
