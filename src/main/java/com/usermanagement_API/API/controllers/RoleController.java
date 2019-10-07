/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usermanagement_API.API.controllers;

import com.usermanagement_API.API.entities.Role;
import com.usermanagement_API.API.repositories.RoleRepository;
import com.usermanagement_API.API.services.RoleService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Reza
 */
@RestController
@RequestMapping("/role")
@Controller
public class RoleController {
   
    @Autowired RoleRepository roleRepository;
    
    @GetMapping("/")
    public List<Role> getAll(){
        return roleRepository.findAll();
    }
    
}
