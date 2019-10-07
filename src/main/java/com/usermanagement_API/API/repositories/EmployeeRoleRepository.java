/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usermanagement_API.API.repositories;

import com.usermanagement_API.API.entities.EmployeeRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Reza
 */
@Repository
public interface EmployeeRoleRepository extends JpaRepository<EmployeeRole, String>{
    
}
