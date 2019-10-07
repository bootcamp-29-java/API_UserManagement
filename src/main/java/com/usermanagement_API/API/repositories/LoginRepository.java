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
public interface LoginRepository extends JpaRepository<Employee, String> {
//
//    @Query(value = "SELECT DISTINCT(tb_m_employee.id) as \"id\", \n"
//            + "	tb_m_employee.first_name as \"first_name\", \n"
//            + "        tb_m_employee.last_name as \"last_name\", \n"
//            + "        tb_m_employee.email as \"email\", \n"
//            + "        tb_m_account.password as \"password\", \n"
//            + "        tb_tr_employee_role.role as \"employee_role\",\n"
//            + "        GROUP_CONCAT(tb_m_role.name SEPARATOR ', ') as \"role\"\n"
//            + "from \n"
//            + "		tb_m_employee \n"
//            + "join \n"
//            + "		tb_m_account \n"
//            + "on \n"
//            + "		tb_m_employee.id = tb_m_account.id \n"
//            + "join \n"
//            + "		tb_tr_employee_role \n"
//            + "on \n"
//            + "		tb_m_employee.id = tb_tr_employee_role.employee \n"
//            + "join \n"
//            + "		tb_m_role \n"
//            + "on \n"
//            + "		tb_tr_employee_role.role = tb_m_role.id \n"
//            + "where \n"
//            + "		tb_m_employee.email = ?1 and tb_m_account.password = ?2", nativeQuery = true)
//    public Login login(String email, String pass);

    @Query(value = "select * from tb_m_employee WHERE email=?1", nativeQuery = true)
    public Employee getByEmail(String email);
    
    @Query(value = "select * from tb_m_employee", nativeQuery = true)
    public List<Employee> getAll();
}
