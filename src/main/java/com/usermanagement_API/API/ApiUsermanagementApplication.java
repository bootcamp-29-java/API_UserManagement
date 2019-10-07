package com.usermanagement_API.API;


import com.usermanagement_API.API.controllers.BCrypt;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ApiUsermanagementApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApiUsermanagementApplication.class, args);
        BCrypt.hashpw("admin", BCrypt.gensalt());

        System.out.println("coba aja");
//        coba cob = new coba();
//        Consume consume = new Consume();
//        
//        for(Employee emp : consume.getAll()){
//                 System.out.println("Department -> " + emp.getId() + " Name " + emp.getFirstName());
//        }
        
//        Employee login = consume.login("mii.bootcamp29@gmail.com", "admin");
//        System.out.println(login.getEmail());
//        System.out.println(login.getId());
        
//        List<String> role = new ArrayList<>();
        
//        for (EmployeeRole employeerole : login.getEmployeeRoleList()) {
//            System.out.println(employeerole.getRole().getName());
//        }
//        System.out.println(role);
        
//        Login depAPI = cob.getById("mii.bootcamp29@gmail.com");
//        System.out.println(depAPI.getRole());

//        Employee employee = new Employee("saua", "kkk", "email", "pml", "Male", "Wni", true, "kkk", "6", null, null, null, null);
//        cob.saves(employee);

//        System.out.println(sDate1+"\t"+date1);  
    }

}
