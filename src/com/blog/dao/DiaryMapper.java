package com.blog.dao;

import java.util.List;

import com.blog.model.Diary;
import com.blog.model.Ly;


public interface DiaryMapper {
	//写日记
	void writediary(Diary diary);
	//查找全部日记
	List<Diary> selectAllDiary();
	//删除
	void deleteDiaryById(int diaryid);
	//查找全部留言
	List<Ly> selectly(int blogid);
	//写留言
	void writely(Ly ly);

}
