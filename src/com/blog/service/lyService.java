package com.blog.service;

import com.blog.model.Ly;

import java.util.List;

public interface lyService {
    //����ȫ������
    List<Ly> selectly(int id);
    //д����
    void writely(Ly ly);
}
