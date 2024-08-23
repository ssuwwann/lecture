package org.threefour.homelearn.admin.controller;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.threefour.homelearn.admin.domain.RankingSubjectAdmin;
import org.threefour.homelearn.admin.domain.RateSubjectAdmin;
import org.threefour.homelearn.admin.service.AdminService;

import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("admin")
public class AdminController {
  private AdminService adminService;

  @Autowired
  public void setAdminService(AdminService adminService) {
    this.adminService = adminService;
  }

  @GetMapping("dash-board")
  public String rateSubjectList(Model model) {
    int todayCnt = adminService.todaySubscriber();
    int totalCnt = adminService.totalSubscriber();
    List<RateSubjectAdmin> rateSubjectList = adminService.rateSubjectList();
    List<RankingSubjectAdmin> rankingList = adminService.rankingSubjectList();

    Gson gson = new Gson();
    JsonArray jsonArray = new JsonArray();

    Iterator<RateSubjectAdmin> it = rateSubjectList.iterator();
    while (it.hasNext()) {
      RateSubjectAdmin rateSubject = it.next();
      JsonObject object = new JsonObject();
      String name = rateSubject.getSubjectName();
      int cnt = rateSubject.getCnt();

      object.addProperty("name", name);
      object.addProperty("cnt", cnt);
      jsonArray.add(object);
    }
    String json = gson.toJson(jsonArray);
    model.addAttribute("todayCnt", todayCnt);
    model.addAttribute("totalCnt", totalCnt);
    model.addAttribute("json", json);
    model.addAttribute("rankingList", rankingList);

    return "admin/dash-board";
  }
}
