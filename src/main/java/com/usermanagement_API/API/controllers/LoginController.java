/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usermanagement_API.API.controllers;

import com.usermanagement_API.API.entities.Account;
import com.usermanagement_API.API.entities.Employee;
import com.usermanagement_API.API.entities.EmployeeRole;
import com.usermanagement_API.API.repositories.EmployeeRepository;
import com.usermanagement_API.API.repositories.LoginRepository;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Reza
 */
@RestController
@RequestMapping("/login")
public class LoginController {

    @Autowired
    LoginRepository loginRepository;
    @Autowired
    EmployeeRepository employeeRepository;

//    @PostMapping("/")
//    public Map<String, Object> post_login(String email, String password) {
//        Map<String, Object> result = new HashMap<>();
//        
//        result.put("email", email);
//        result.put("password", password);
//                
//        return result;
//    }
//    
//    @PostMapping("/")
//    public Map<String, Object> login(HttpServletRequest request,@RequestBody Employee emp
//            ,@RequestBody Account acc) {
//        Map<String, Object> result = new HashMap<>();
////        String emplo = emp.setEmail();
//        Employee employee = loginRepository.getByEmail("mii.bootcamp29@gmail.com");
//        System.out.println(employee.getFirstName());
//        System.out.println(employee);
//        if (employee != null) {
//            if (BCrypt.checkpw("admin", employee.getAccount().getPassword())) {
//                result.put("status", "Berhasil");
//                result.put("firstName", employee.getFirstName());
//                result.put("lastName", employee.getLastName());
//                result.put("id", employee.getId());
//                result.put("email", employee.getEmail());
//                result.put("birthDate", employee.getBirthDate());
//                result.put("birthPlace", employee.getBirthPlace());
//                result.put("gender", employee.getGender());
//                result.put("isDelete", employee.getIsDelete());
//                result.put("manager", employee.getManager().getId());
//                result.put("department", employee.getDepartment());
//
//                List<String> roles = new ArrayList<>();
//                for (EmployeeRole empl : employee.getEmployeeRoleList()) {
//                    roles.add(empl.getRole().getName());
//                }
//                result.put("roles", roles);
//            }
//
//        } else {
//            result.put("status", "Gagal");
//        }
//        return result;
//    }
    
    @PostMapping("/{email}/{password}")
    public Map<String, Object> login2(HttpServletRequest request,@PathVariable(value="email") String email
            ,@PathVariable(value="password") String password) {
        System.out.println(email);
        System.out.println(password);
        Map<String, Object> result = new HashMap<>();
        Employee employee = loginRepository.getByEmail(email.toString());
        System.out.println(employee);
        if (employee != null) {
            if (BCrypt.checkpw(password, employee.getAccount().getPassword())) {
                result.put("status", "Berhasil");
                result.put("firstName", employee.getFirstName());
                result.put("lastName", employee.getLastName());
                result.put("id", employee.getId());
                result.put("email", employee.getEmail());
                result.put("birthDate", employee.getBirthDate());
                result.put("birthPlace", employee.getBirthPlace());
                result.put("gender", employee.getGender());
                result.put("isDelete", employee.getIsDelete());
                result.put("manager", employee.getManager().getId());
                result.put("department", employee.getDepartment());

                List<String> roles = new ArrayList<>();
                for (EmployeeRole empl : employee.getEmployeeRoleList()) {
                    roles.add(empl.getRole().getName());
                }
                result.put("roles", roles);
            }

        } else {
            result.put("status", "Gagal");
        }
        return result;
    }
    
    
    @PostMapping("/")
    public Map<String, Object> login(HttpServletRequest request,@RequestParam("email") String email
            ,@RequestParam("password") String password) {
        System.out.println(email);
        System.out.println(password);
        Map<String, Object> result = new HashMap<>();
        Employee employee = loginRepository.getByEmail(email.toString());
        System.out.println(employee);
        if (employee != null) {
            if (BCrypt.checkpw(password, employee.getAccount().getPassword())) {
                result.put("status", "Berhasil");
                result.put("firstName", employee.getFirstName());
                result.put("lastName", employee.getLastName());
                result.put("id", employee.getId());
                result.put("email", employee.getEmail());
                result.put("birthDate", employee.getBirthDate());
                result.put("birthPlace", employee.getBirthPlace());
                result.put("gender", employee.getGender());
                result.put("isDelete", employee.getIsDelete());
                result.put("manager", employee.getManager().getId());
                result.put("department", employee.getDepartment());

                List<String> roles = new ArrayList<>();
                for (EmployeeRole empl : employee.getEmployeeRoleList()) {
                    roles.add(empl.getRole().getName());
                }
                result.put("roles", roles);
            }

        } else {
            result.put("status", "Gagal");
        }
        return result;
    }
    
    @PostMapping("/assessment/")
    public Map<String, Object> loginAssesment(HttpServletRequest request, @RequestParam("email") String email, @RequestParam("password") String password) {
        Map<String, Object> result = new HashMap<>();
        Employee employee = loginRepository.getByEmail(email);
        if (employee != null) {
            if (BCrypt.checkpw(password, employee.getAccount().getPassword())) {
                result.put("responseCode", "200");
                result.put("firstName", employee.getFirstName());
                result.put("lastName", employee.getLastName());
                result.put("id", employee.getId());
                result.put("email", employee.getEmail());
                List<String> roles = new ArrayList<>();
                for (EmployeeRole empl : employee.getEmployeeRoleList()) {
                    roles.add(empl.getRole().getName());
                }
                result.put("roles", roles);
            }
        } else {
            result.put("response_code", "404");
        }
        return result;
}
    @GetMapping("/assessment/{id}")
    public Map<String, Object> getEmployeeId2(@PathVariable(value = "id") String id) {
        Map<String, Object> result = new HashMap<>();
        Employee employee = employeeRepository.getById(id);
        result.put("id", employee.getId());
        result.put("firstName", employee.getFirstName());
        result.put("lastName", employee.getLastName());
        result.put("email", employee.getEmail());
        return result;
    }

}
