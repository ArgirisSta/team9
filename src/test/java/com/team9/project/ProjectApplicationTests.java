package com.team9.project;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.List;

@SpringBootTest
public class ProjectApplicationTests {

	private static final Logger LOGGER = LoggerFactory.getLogger(ProjectApplicationTests.class);
	List<String> passwordsToBeHased = Arrays.asList("1234","1234","1234","1234");

	@Autowired
	private SecurityConfig securityConfig;

    @Test
    void contextLoads() {
        passwordsToBeHased.forEach(password ->
                LOGGER.info("Hash value of password " + password + "is :" + securityConfig.passwordEncoder().encode(password)));

    }

}
