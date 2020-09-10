package com.example.demo.rest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.Instant;

@RestController
@RequestMapping("/api")
public class DemoResource {

    @GetMapping("/hola")
    public String testHola(){
        return "HOLA "+Instant.now();
    }

    @GetMapping("/hello")
    public String testHello(){
        return "hello "+Instant.now();
    }
}