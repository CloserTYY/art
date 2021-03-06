package com.blog.service;

import java.util.List;

import com.blog.model.Ly;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.dao.DiaryMapper;
import com.blog.model.Diary;
@Service
public class DiaryServiceImpl implements DiaryService{
	@Autowired
	DiaryMapper diaryMapper;

	@Override
	public void writediary(Diary diary) {
		// TODO Auto-generated method stub
		diaryMapper.writediary(diary);
	}

	@Override
	public List<Diary> selectAllDiary() {
		// TODO Auto-generated method stub
		List<Diary> diarys =this.diaryMapper.selectAllDiary();
		return diarys;
	}

	@Override
	public void deleteDiaryById(int diaryid) {
		// TODO Auto-generated method stub
		diaryMapper.deleteDiaryById(diaryid);
	}

	@Override
	public List<Ly> selectly(int blogid) {
		List<Ly> ly = this.diaryMapper.selectly(blogid);
		return ly;
	}

	@Override
	public void writely(Ly ly) {
		diaryMapper.writely(ly);


	}

}
