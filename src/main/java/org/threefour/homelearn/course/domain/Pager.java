package org.threefour.homelearn.course.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Pager {
  private List<Course> list;
  private int pageNum;
  private int totalBoard;
  private int pageSize;
  private int blockSize;

  private int totalPage;
  private int startRow;
  private int endRow;
  private int startPage;
  private int endPage;
  private int prevPage;
  private int nextPage;
  private int offsetSize;

  public Pager(int pageNum, int totalBoard, int pageSize, int blockSize) {
    this.pageNum = pageNum;
    this.totalBoard = totalBoard;
    this.pageSize = pageSize;
    this.blockSize = blockSize;
  }

  public void calcPage() {
    totalPage = (int) Math.ceil((double) totalBoard / pageSize);

    if (pageNum <= 0 || pageNum > totalPage) {
      pageNum = 1;
    }

    startRow = (pageNum - 1) * pageSize + 1;
    endRow = pageNum * pageSize;
    if (endRow > totalBoard) {
      endRow = totalBoard;
    }

    startPage = (pageNum - 1) / blockSize * blockSize + 1;
    endPage = startPage + blockSize - 1;
    if (endPage > totalPage) {
      endPage = totalPage;
    }

    prevPage = startPage - blockSize;
    nextPage = startPage + blockSize;
  }
}
