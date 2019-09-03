/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FundacionController {

    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/addFundacion", method = RequestMethod.GET)
    public String Fundacion(Locale locale, Model model) {

        return "crearFundacion";
    }
}