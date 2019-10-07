/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usermanagement_API.API.repositories;

import com.usermanagement_API.API.entities.Employee;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Reza
 */
@Repository
public interface EmployeeRepository extends JpaRepository<Employee, String> {

    @Query(value = "select * from tb_m_employee WHERE manager=?1", nativeQuery = true)
    public List<Employee> getEmployeeByManager(String manager);

    @Query(value = "select * from tb_m_employee", nativeQuery = true)
    public List<Employee> getEmployeeAll();

    @Query(value = "select * from tb_m_employee where id=?1", nativeQuery = true)
    public List<Employee> getEmployeeById(String id);

    @Query(value = "select * from tb_m_employee where id=?1", nativeQuery = true)
    public Employee getById(String id);

    @Query(value = "select e.* from tb_m_employee e JOIN tb_tr_employee_role rl ON rl.employee=e.id where rl.role='5'", nativeQuery = true)
    public List<Employee> getEmployeeGA();

    @Query(value = "select e.* from tb_m_employee e JOIN tb_tr_employee_role rl ON rl.employee=e.id where rl.role='2'", nativeQuery = true)
    public List<Employee> getParticipants();

    @Query(value = "select e.* from tb_m_employee e JOIN tb_tr_employee_role rl ON rl.employee=e.id where rl.role='3'", nativeQuery = true)
    public List<Employee> getTrainers();

}
