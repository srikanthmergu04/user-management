package com.interview.usermanagement.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.interview.usermanagement.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
	
	public User findByUserName(String userName);

}
