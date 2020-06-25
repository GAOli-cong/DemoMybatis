package com.glc.demo.user.dao;

import com.glc.demo.user.entity.UserEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserDao {

    List<UserEntity> getAll(@Param("content") Map map);

    void delById(Integer id);

    //保存用户
    public void save(UserEntity userEntity);


    //根据id查询用户数据
    public UserEntity getUserById(Integer id);

    public void updateUserById(UserEntity userEntity);
}
