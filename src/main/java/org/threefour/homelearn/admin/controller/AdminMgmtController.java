package org.threefour.homelearn.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.threefour.homelearn.admin.domain.CourseMemberAdmin;
import org.threefour.homelearn.admin.domain.CoursesAdmin;
import org.threefour.homelearn.admin.domain.MemberAdmin;
import org.threefour.homelearn.admin.domain.ReviewAdmin;
import org.threefour.homelearn.admin.service.AdminService;

import java.util.List;

@Controller
@RequestMapping("mgmt")
public class AdminMgmtController {
  private AdminService adminService;

  @Autowired
  public AdminMgmtController(AdminService adminService) {
    this.adminService = adminService;
  }

  @GetMapping("member/list")
  public String memberList(Model model) {
    List<MemberAdmin> memberList = adminService.memberList();
    model.addAttribute("memberList", memberList);
    return "admin/member";
  }

  @GetMapping("course/courseList")
  public String courseList(Model model) {
    List<CoursesAdmin> courseList = adminService.courseList();
    model.addAttribute("courseList", courseList);
    return "admin/courses";
  }

  @ResponseBody
  @GetMapping("course/memberList")
  public List<CourseMemberAdmin> courseMemberList(long courseId) {
    List<CourseMemberAdmin> memberList = adminService.courseMemberList(courseId);
    return memberList;
  }

  @GetMapping("order/list")
  public String orderList(Model model) {
    /*List<Review> list = orderService.reviewList();
    model.addAttribute("list", list);*/
    return "admin/order";
  }

  @GetMapping("review/list")
  public String reviewList(Model model) {
    List<ReviewAdmin> list = adminService.reviewList();
    model.addAttribute("list", list);
    return "admin/review";
  }
}
