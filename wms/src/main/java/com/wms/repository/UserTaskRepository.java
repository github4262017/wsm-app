package com.wms.repository;

/**
 * Created by Yasin Mert on 25.02.2017.
 */
import com.wms.model.Task;
import com.wms.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wms.model.UserTask;

import java.util.List;

@Repository("userTaskRepository")
public interface UserTaskRepository extends JpaRepository<UserTask, Integer> {
    List<UserTask> findByTask (Task task);
    List<UserTask> findByUser (User user);
}
