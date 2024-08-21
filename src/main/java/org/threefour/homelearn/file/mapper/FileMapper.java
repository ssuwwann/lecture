package org.threefour.homelearn.file.mapper;

import org.threefour.homelearn.file.dto.AttachFile;
import org.threefour.homelearn.file.dto.FileRequestDTO;

import java.util.List;

public interface FileMapper {
  List<AttachFile> selectFileByMemberId(Long memberId);

  int insertFile(List<AttachFile> files);

  int deleteFile(String saveName);
}
