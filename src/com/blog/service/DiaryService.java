package com.blog.service;

import java.util.List;

import com.blog.model.Diary;
import com.blog.model.Ly;


public interface DiaryService {
	//д�ռ�
	void writediary(Diary diary);
	//����ȫ���ռ�
	List<Diary> selectAllDiary();
	//ɾ��
	void deleteDiaryById(int diaryid);
	//����ȫ������
	List<Ly> selectly(int blogid);
	//д����
	void writely(Ly ly);
}
