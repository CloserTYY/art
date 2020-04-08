package com.blog.service;

import com.blog.dao.lyMapper;
import com.blog.model.Ly;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class lyServicelmpl implements lyService {
    @Autowired
    lyMapper lyMapper;

    @Override
    public List<Ly> selectly(int id) {
        List<Ly> ly = this.lyMapper.selectly(id);
        return ly;
    }

    @Override
    public void writely(Ly ly) {
        this.lyMapper.writely(ly);
    }
}
