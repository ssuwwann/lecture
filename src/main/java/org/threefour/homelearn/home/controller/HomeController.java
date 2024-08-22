package org.threefour.homelearn.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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