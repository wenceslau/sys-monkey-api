package com.suite.job;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/job")
public class JobResource {

	@GetMapping
	public ResponseEntity<?> test() {
		return new ResponseEntity<>("OK!", HttpStatus.OK);
	}

}