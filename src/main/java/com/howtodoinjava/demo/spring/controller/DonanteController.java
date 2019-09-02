/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.controller;

import com.howtodoinjava.demo.spring.model.Donante;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.howtodoinjava.demo.spring.service.DonanteService;
import org.springframework.beans.factory.annotation.Autowired;
/**
 *
 * @author pc
 */
@Controller
public class DonanteController {
    	@Autowired
	private DonanteService donanteService;
    @RequestMapping(value = "/crearDonante", method = RequestMethod.GET)
    public String donante(Locale locale, Model model) {
        
        
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
        
        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate );
        

        return "crearDonante";
    }
    public Donante formBackingObject() {
        return new Donante();
    }

    @PostMapping("/addDonante")
    public String saveUser(@ModelAttribute("donante") @Valid Donante donante, BindingResult result, Model model) {

            if (result.hasErrors()) {
                    model.addAttribute("donantes", donanteService.list());
                    return "crearDonante";
            }

            donanteService.save(donante);
            return "redirect:/crearDonante";
    }
}
