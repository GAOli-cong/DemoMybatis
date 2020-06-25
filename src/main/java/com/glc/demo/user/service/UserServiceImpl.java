package com.glc.demo.user.service;


import com.glc.demo.user.dao.UserDao;
import com.glc.demo.user.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;
    @Override
    public List<UserEntity> getAll(Map map) {
        return userDao.getAll(map);
    }

    @Override
    public void delById(Integer id) {
        userDao.delById(id);
    }

    @Override
    public void save(UserEntity userEntity) {

        userEntity.setCreatetime(new Date());
        userEntity.setStatus(1);
        userDao.save(userEntity);
    }

    @Override
    public UserEntity getUserById(Integer id) {
        return userDao.getUserById(id);
    }

    @Override
    public void updateUserById(UserEntity userEntity) {
        userDao.updateUserById(userEntity);
    }
}
