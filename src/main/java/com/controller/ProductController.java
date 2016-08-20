package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.ProductModel;
import com.service.ProductService;


@Controller
public class ProductController {

	//@ModelAttribute annotation is used to mention the properties we used in the Bean class
	@ModelAttribute("ob")
	public ProductModel construct(){
		return new ProductModel();
	}
	@Autowired(required=true)
	private ProductService productservice;
	
	@RequestMapping("/Prodview")
	public String setupForm(){
		return "Prodview";
	}
	
	@RequestMapping(value="edit/{id}")
	public String edits(@PathVariable("id")String id,@ModelAttribute ProductModel productmodel, BindingResult result, Map<String, Object>map){
		productmodel=productservice.getProductModel(id);
		map.put("productmodel",productmodel);
		map.put("productmodelList",productservice.getAllProductModel());
		return "Prodview";
	}

	@RequestMapping(value="remove/{id}")
	public String removes(@PathVariable("id")String id,@ModelAttribute ProductModel productmodel, BindingResult result, Map<String, Object>map){
		productmodel=productservice.getProductModel(id);
		map.put("productmodel",productmodel);
		map.put("productmodelList",productservice.getAllProductModel());
		return "Prodview";
	}
	
	/*	@RequestMapping(value="/prodview", method=RequestMethod.GET)
		public String prds(Map<String, Object>map)public String getprodview(ModelMap m){
			
			ProductModel prd = new ProductModel();
			map.put("productmodel",prd);
		    m.put("productmodelList", productservice.getAllProductModel());
		    System.out.println("hiiiiii");
			return "prodviewz";
	}*/
	
	//Mapping to which page it should go next
	@RequestMapping(value="productmodel.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute("ob") ProductModel productmodel, BindingResult result, @RequestParam String action, Map<String, Object>map){
	    ProductModel productmodelResult = new ProductModel();
	    //By using the Switch method we can perform the CRUD operations
	    switch(action.toLowerCase()){
	    case "add":
	    	System.out.println("in switch add");
	    	productservice.add(productmodel);
	    	productmodelResult = productmodel;
	    	break;
	    	
	    case "edit":
	    	System.out.println("in switch edit");
	    	productservice.edit(productmodel);
	    	productmodelResult = productmodel;
	    	break;
	    	
	    case "delete":
	    	productservice.delete(productmodel.getId());
	    	productmodelResult = new ProductModel();
	    	break;
	    	
	    case "search":
	    	ProductModel searchedProductModel = productservice.getProductModel(productmodel.getId());
	    	productmodelResult = searchedProductModel!=null ? searchedProductModel : new ProductModel();
	    	break;
	    	default:
	    		System.out.println("in switch add-default");
	    }
	    map.put("productmodel",productmodelResult);
	    map.put("productmodelList", productservice.getAllProductModel());
		return "prodviewz";
		
	}
}
