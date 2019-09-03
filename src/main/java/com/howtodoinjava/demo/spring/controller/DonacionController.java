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
public class DonacionController {

    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/addDonacion", method = RequestMethod.GET)
    public String Donacion(Locale locale, Model model) {

        return "crearDonacion";
    }
    @RequestMapping(value = "/ultimasDonaciones", method = RequestMethod.GET)
    public String UltimasDonaciones(Locale locale, Model model) {

        return "ultimasDonaciones";
    }
}