package org.threefour.homelearn.home.controller;

import com.nimbusds.jose.shaded.gson.Gson;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.threefour.homelearn.member.dto.CustomUserDetails;
import org.threefour.homelearn.member.dto.MemberResponseDTO;
import org.threefour.homelearn.member.dto.Role;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/")
public class HomeController {

  @GetMapping
  public String home01() {
    return "/jsp/home-01";
  }

  @GetMapping("/home-02")
  public String home02() {
    return "/jsp/home-02";
  }

  @GetMapping("/home-03")
  public String home03() {
    return "/jsp/home-03";
  }
}