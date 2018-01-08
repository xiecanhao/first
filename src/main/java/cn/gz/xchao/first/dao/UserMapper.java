package cn.gz.xchao.first.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.gz.xchao.first.entity.User;

@Mapper
public interface UserMapper {
	@Select("select id,name from user")
	List<User> findAllUser();

	@Select("select count(*) from user where name=#{name} and name=#{passwd}")
	int isExist(@Param("name") String name, @Param("passwd") String passwd);
}
