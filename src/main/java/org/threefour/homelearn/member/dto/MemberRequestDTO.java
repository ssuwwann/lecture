package org.threefour.homelearn.member.dto;

import lombok.*;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MemberRequestDTO {
  private Long id;
  private String email;
  private String password;
  private String nickname;
  private String role;

  public void setPassword(String password) {
    this.password = password;
  }
}
