package com.wms.repository;

/**
 * Created by Yasin Mert on 25.02.2017.
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wms.model.Task;

@Repository("taskRepository")
public interface TaskRepository extends JpaRepository<Task, Integer> {
}
