package com.blog.dao;

import com.blog.model.Ly;

import java.util.List;

public interface lyMapper {
    //����ȫ������
    List<Ly> selectly(int id);
    //д����
    void writely(Ly ly);

}
