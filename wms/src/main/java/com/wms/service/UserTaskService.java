package com.wms.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.wms.model.Task;
import com.wms.model.User;
import com.wms.model.UserTask;
import com.wms.repository.UserTaskRepository;

@Service
@Transactional
public class UserTaskService {

	private final UserTaskRepository userTaskRepository;

	public UserTaskService(UserTaskRepository userTaskRepository) {
		this.userTaskRepository = userTaskRepository;
	}
	
	public List<UserTask> findAll(){
		List<UserTask> user_tasks = new ArrayList<>();
		user_tasks = userTaskRepository.findAll();
		return user_tasks;
	}
	
	public UserTask findUserTask(int id){
		return userTaskRepository.findById(id).get();
	}
	
	public void save(UserTask user_task){
		userTaskRepository.save(user_task);
	}
	
	public void delete(int id){
		userTaskRepository.deleteById(id);

	}

	public List<UserTask> findByTask(Task task) {
		return userTaskRepository.findByTask(task);
	}
	public List<UserTask> findByUser(User user) {
		return userTaskRepository.findByUser(user);
	}
}
