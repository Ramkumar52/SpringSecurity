package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.model.UploadForm;

@Controller

public class UploadFormController implements HandlerExceptionResolver{
	@RequestMapping(value="/up",method=RequestMethod.GET)
	public String showForm(ModelMap model){
		System.out.println("in up");
		UploadForm form = new UploadForm();
		model.addAttribute("FORM",form);
		return "FileUploadForm";
	}
	
	@RequestMapping(value="/abc",method=RequestMethod.POST)
	public String processForm(@ModelAttribute(value="FORM") UploadForm form,BindingResult result){
		System.out.println("in up-out err");
		if(!result.hasErrors()){
			FileOutputStream outputStream = null;
			System.out.println("in up - post");
			String filePath = System.getProperty("java.io.tmpdir") + "/" + form.getFile().getOriginalFilename();
			System.out.println(filePath);
			try {
				outputStream = new FileOutputStream(new File(filePath));
				outputStream.write(form.getFile().getFileItem().get());	
				outputStream.close();
			} catch (Exception e) {
				System.out.println("in up - catch");
				System.out.println("Error while saving file");
				return "up";
			}
			return "success";
		}else{
			return "up";
		}		
	}
	

	@Override
	public ModelAndView resolveException(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception exception) {// HttpServletRequest I can get all parameters which were sent by requesting them
		Map<Object, Object> model = new HashMap<Object, Object>();//HashMap class implements Map interface
        if (exception instanceof MaxUploadSizeExceededException)
        {
        	System.out.println("in up - exce - if");
            model.put("errors", "File size should be less then "+((MaxUploadSizeExceededException)exception).getMaxUploadSize()+" byte.");
        } else
        {
        	System.out.println("in up- else");
            model.put("errors", "Unexpected error: " + exception.getMessage());
        }
        model.put("FORM", new UploadForm());
        return new ModelAndView("up", (Map) model);

	}
}
