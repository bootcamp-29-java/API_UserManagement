/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usermanagement_API.API.controllers;

import com.usermanagement_API.API.entities.Employee;
import com.usermanagement_API.API.repositories.EmployeeRepository;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Reza
 */
@RestController
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    EmployeeRepository employeeRepository;

    @GetMapping("/manager/{manager}")
    public List<Map<String, Object>> getEmployeeByManager(@PathVariable(value = "manager") String manager) {
        List<Map<String, Object>> result = new ArrayList<>();
        Map<String, Object> employeeTmp = new HashMap<>();
        for (Employee employee : employeeRepository.getEmployeeByManager(manager)) {
            employeeTmp.put("id", employee.getId());
            employeeTmp.put("firstName", employee.getFirstName());
            employeeTmp.put("lastName", employee.getLastName());
            employeeTmp.put("email", employee.getEmail());
            employeeTmp.put("manager", employee.getManager().getId());
            result.add(employeeTmp);
            employeeTmp = new HashMap<>();

        }
//        System.out.println(result);
        return result;
    }

    @GetMapping("/")
    public List<Map<String, Object>> getEmployeeAll() {
        List<Map<String, Object>> result = new ArrayList<>();
        Map<String, Object> employeeTmp = new HashMap<>();
        for (Employee employee : employeeRepository.findAll()) {
            employeeTmp.put("Employee : ", "");
            employeeTmp.put("id", employee.getId());
            employeeTmp.put("firstName", employee.getFirstName());
            employeeTmp.put("lastName", employee.getLastName());
            employeeTmp.put("email", employee.getEmail());
            employeeTmp.put("birthPlace", employee.getBirthPlace());
            employeeTmp.put("birthDate", employee.getBirthDate());
            employeeTmp.put("gender", employee.getGender());
            employeeTmp.put("isDelete", employee.getIsDelete());
            employeeTmp.put("religion", employee.getReligion().getId());
            employeeTmp.put("manager", employee.getManager().getId());
            employeeTmp.put("department", employee.getDepartment());
            result.add(employeeTmp);
            employeeTmp = new HashMap<>();
        }
        return result;
    }

    @GetMapping("/{id}")
    public List<Map<String, Object>> getEmployeeById(@PathVariable(value = "id") String id) {
        List<Map<String, Object>> result = new ArrayList<>();
        Map<String, Object> employeeTmp = new HashMap<>();
        for (Employee employee : employeeRepository.getEmployeeById(id)) {
            employeeTmp.put("id", employee.getId());
            employeeTmp.put("firstName", employee.getFirstName());
            employeeTmp.put("lastName", employee.getLastName());
            employeeTmp.put("email", employee.getEmail());
            employeeTmp.put("birthPlace", employee.getBirthPlace());
            employeeTmp.put("birthDate", employee.getBirthDate());
            employeeTmp.put("gender", employee.getGender());
            employeeTmp.put("isDelete", employee.getIsDelete());
            employeeTmp.put("religion", employee.getReligion().getId());
            employeeTmp.put("manager", employee.getManager().getId());
            employeeTmp.put("department", employee.getDepartment());
            result.add(employeeTmp);
            employeeTmp = new HashMap<>();
        }
        return result;
    }

    @GetMapping("/ga")
    public List<Map<String, Object>> getEmployeeGA() {
        List<Map<String, Object>> result = new ArrayList<>();
        Map<String, Object> employeeTmp = new HashMap<>();
        for (Employee employee : employeeRepository.getEmployeeGA()) {
            employeeTmp.put("email", employee.getEmail());
            result.add(employeeTmp);
            employeeTmp = new HashMap<>();
        }
        return result;
    }
    
    @GetMapping("/participants")
    public List<Map<String, Object>> getParticipants() {
        List<Map<String, Object>> result = new ArrayList<>();
        Map<String, Object> result2 = new HashMap<>();

        List<Employee> employees = employeeRepository.getParticipants();
        if (!employees.isEmpty()) {
            for (Employee employee : employees) {
                result2.put("firstName", employee.getFirstName());
                result2.put("lastName", employee.getLastName());
                result2.put("id", employee.getId());
                result2.put("email", employee.getEmail());
                result.add(result2);
                result2 = new HashMap<>();
            }

        }
        return result;
    }

    @GetMapping("/trainers")
    public List<Map<String, Object>> getTrainers() {
        List<Map<String, Object>> result = new ArrayList<>();
        Map<String, Object> result2 = new HashMap<>();

        List<Employee> employees = employeeRepository.getTrainers();
        if (!employees.isEmpty()) {
            for (Employee employee : employees) {
                result2.put("firstName", employee.getFirstName());
                result2.put("lastName", employee.getLastName());
                result2.put("id", employee.getId());
                result2.put("email", employee.getEmail());
                result.add(result2);
                result2 = new HashMap<>();
            }

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
