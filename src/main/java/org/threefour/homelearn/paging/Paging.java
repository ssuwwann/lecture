package org.threefour.homelearn.paging;

import lombok.*;
import org.checkerframework.checker.units.qual.A;

import java.util.List;

@Getter
@ToString
public class Paging<E> {
  private int totalElements;
  private int totalPages;
  private int currentPage;
  private int startPage;
  private int endPage;
  private int pageSize;
  private int elementSize;
  private boolean nextPage, previousPage;
  private List<E> elements;

  public Paging(int totalElements, int currentPage, List<E> elements) {
    this.totalElements = totalElements;
    this.currentPage = currentPage;
    // 아래의 숫자를 바꿔줘라,
    this.elementSize = 1;
    this.pageSize = 5;
    this.elements = elements;

    // 아래의 숫자를 바꿔줘라, ((totalElements - 1) / 요부분) + 1;
    totalPages = ((totalElements - 1) / 1) + 1;

    if (currentPage > totalPages) currentPage = totalPages;

    startPage = ((currentPage - 1) / 5) * 5 + 1;
    endPage = startPage + 5 - 1;

    if (endPage > totalPages) endPage = totalPages;

    previousPage = startPage != 1;
    // 아래의 숫자를 바꿔줘라,
    nextPage = (endPage * 1) < totalElements;
  }
}
