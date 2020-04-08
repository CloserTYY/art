package com.blog.dao;

import com.blog.model.Ly;

import java.util.List;

public interface lyMapper {
    //²éÕÒÈ«²¿ÁôÑÔ
    List<Ly> selectly(int id);
    //Ğ´ÁôÑÔ
    void writely(Ly ly);

}
