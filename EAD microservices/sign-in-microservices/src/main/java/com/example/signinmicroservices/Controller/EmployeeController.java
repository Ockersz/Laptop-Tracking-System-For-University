package com.example.signinmicroservices.Controller;

import com.example.signinmicroservices.Data.Employee;
import com.example.signinmicroservices.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping(path = "/employees")
    public List<Employee> getAllEmployee(){
        return employeeService.getAllEmployee();
    }

    @PostMapping(path = "/emp")
    public Employee createEmployee(@RequestBody Employee employee){
        return employeeService.createEmployee(employee);
    }
    @GetMapping(path = "/employees", params = {"username","password"})
    public List<Employee> findEmployeeByUsernameAndPassword(@RequestParam String username, @RequestParam String password){

        return employeeService.findEmployeeByUsernameAndPassword(username,password);
    }
}