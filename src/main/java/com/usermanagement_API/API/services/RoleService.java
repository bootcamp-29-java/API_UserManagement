/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usermanagement_API.API.services;

import com.usermanagement_API.API.entities.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.usermanagement_API.API.repositories.RoleRepository;
import java.util.List;

/**
 *
 * @author Reza
 */
@Service
public class RoleService {
    
    @Autowired RoleRepository repository;
    
    public List<Role> getAll(){
        return repository.findAll();
    }
    
    public Role getById(String id){
        return repository.findById(id).get();
    }
    
    public boolean save(Role role){
        if (repository.save(role)!=null) {
            return true;
        } else {
            return false;
        }
    }
    
    public void delete(String id){
        repository.deleteById(id);
    }
}
