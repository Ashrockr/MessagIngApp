package com.comp.messaging.messagingApp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class MessageController {
	@Autowired
	ReadWriteFile readWriteFile;
	@RequestMapping("/")
	public String getHomePage(){
		return "home";
		
	}
	@RequestMapping("/addNumber")
	public String addMobileNumber(@RequestParam("number") String number,Model model){
		model.addAttribute("addSuccessfull", readWriteFile.addMobileNumber(number));
		System.err.println();
		return "home";
	}
	@RequestMapping("/sendMessage")
	public String sendMessage(@RequestParam(value="message") String message,Model model){
		List<String> numberList = readWriteFile.getMobileNumber();
		String uri = "http://localhost:9090/msg/";

	    RestTemplate restTemplate = new RestTemplate();
	    
		for(String number: numberList){
			restTemplate.getForObject(uri+"/"+number+"/"+message, String.class);
		}
		return "home";
	}
	@RequestMapping("/msg/{number}/{message}")
	public String msgReceived(@PathVariable("number") String number, @PathVariable("message")String message){
		System.err.println("Number :"+number+" Message :"+message);
		return "send";
	}

}
