package com.spring.mvc;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.spring.model.Category;
import com.spring.model.bat;
import com.spring.services.*;
@Controller
public class batController {
	
	@Autowired
	private batservices batservices;

	
	
	public batservices getBatservices() {
		return batservices;
	}

	public void setBatservices(batservices batservices) {
		this.batservices = batservices;
	}

	@RequestMapping("/getbatList")
	public @ResponseBody List<bat> getbatListInJson(){
		System.out.println("entered in getbatlist");
		return batservices.getAllbat();
	}
	
 @RequestMapping("/batListAngular")
	public String getbat(){
		return "batList";
	}

	@RequestMapping("/getAllbat")
	public ModelAndView getAllbat() {
		List<bat> bat = batservices.getAllbat();
		return new ModelAndView("batList", "bat", bat);
	}

	@RequestMapping("getbatBysid/{sid}")
	public ModelAndView getbatbysid(@PathVariable(value = "sid") int sid) {
		bat bat = batservices.getbatbysid(sid);
		return new ModelAndView("batpage", "bat", bat);
	}

	@RequestMapping("/admin/delete/{sid}")
	public String deletebat(@PathVariable(value = "sid") int sid) {
		Path path=Paths.get("C:\\eclipsefiles\\cricket bat project\\cricketbat\\src\\main\\webapp\\WEB-INF\\resources\\images\\" + sid + ".png");
		if(Files.exists(path))
				{
			try {
						Files.delete(path);
					} catch (IOException e) {
						
						e.printStackTrace();
					}
				}

		batservices.deletebat(sid);
		return "redirect:/getAllbat";
	}

	@RequestMapping(value = "admin/bat/addbat", method = RequestMethod.GET)
	public String getbatForm(Model model) {
		bat bat = new bat();
		Category category = new Category();
		category.setCid(1);// maths
		// set the category as 1 for the Book book
		bat.setCategory(category);
		model.addAttribute("batFormObj", bat);
		return "batForm";

	}

	@RequestMapping(value = "admin/bat/addbat", method = RequestMethod.POST)
	public String addbat(@Valid@ModelAttribute(value = "batFormObj") bat bat, BindingResult result) {
		if (result.hasErrors())
			return "batForm";

		batservices.addbat(bat);
		MultipartFile image=bat.getBatImage();
		if(image!=null && !image.isEmpty()){
			Path path=Paths.get("C:\\eclipsefiles\\cricket bat project\\cricketbat\\src\\main\\webapp\\WEB-INF\\resources\\images\\" + bat.getSid() + ".png");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			}
			return"redirect:/getAllbat";
		}

		
	@RequestMapping(value = "/admin/bat/editbat/{sid}")
	public ModelAndView getEditForm(@PathVariable(value = "sid") int sid) {

		bat bat = this.batservices.getbatbysid(sid);
		return new ModelAndView("editbatForm", "editbatObj", bat);
	}

	@RequestMapping(value = "/admin/bat/editbat", method = RequestMethod.POST)
	public String editbat(@ModelAttribute(value = "editbatObj") bat bat) {
		batservices.editbat(bat);
		return "redirect:/getAllbat";

	}
	
	

	@RequestMapping("/home")
	public String Home() {
		return "home";

	}
	

}
