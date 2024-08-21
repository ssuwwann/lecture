package org.threefour.homelearn.member.dto;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MemberRequestDTO {
  private Long id;
  private String email;
  private String nickname;
  private String password;
  private String role;
}
