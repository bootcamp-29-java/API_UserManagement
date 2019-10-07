/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.usermanagement_API.API.services;

import com.usermanagement_API.API.entities.Employee;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author Reza
 */
public class Consume {

//    private static RestTemplate resttemplate = new RestTemplate();
//    String url = "http://192.168.1.106:8084/employee";
//
//    public Employee login(String email, String pass) {
//        Employee emp = new Employee();
//        Map<String, Object> result = new HashMap<>();
//        result.put("email", email);
//        result.put("password", pass);
//
//        emp = resttemplate.getForObject(url + "/login/{email}/{password}", Employee.class, result);
//        return emp;
//    }
//
//    public List<Employee> getAll() {
//        ResponseEntity<List<Employee>> response = resttemplate.exchange(url+"/view", HttpMethod.GET, null, new ParameterizedTypeReference<List<Employee>>() {
//        });
//        List<Employee> res = response.getBody();
//        return res;
//    }
}
