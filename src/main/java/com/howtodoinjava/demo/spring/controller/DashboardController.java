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
public class DashboardController {

    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public String Donacion(Locale locale, Model model) {

        return "dashboardFundacion";
    }
    @RequestMapping(value = "/dashboard/alimentos", method = RequestMethod.GET)
    public String DonacionAlimentos(Locale locale, Model model) {

        return "donacionAlimentos";
    }
    @RequestMapping(value = "/dashboard/tecnologia", method = RequestMethod.GET)
    public String DonacionTecnologia(Locale locale, Model model) {

        return "donacionTecnologia";
    }
    @RequestMapping(value = "/dashboard/hogar", method = RequestMethod.GET)
    public String DonacionHogar(Locale locale, Model model) {

        return "donacionHogar";
    }
    @RequestMapping(value = "/dashboard/ropa", method = RequestMethod.GET)
    public String DonacionRopa(Locale locale, Model model) {

        return "donacionRopa";
    }
    @RequestMapping(value = "/dashboard/escolar", method = RequestMethod.GET)
    public String DonacionEscolar(Locale locale, Model model) {

        return "donacionEscolar";
    }
    @RequestMapping(value = "/dashboard/utiles", method = RequestMethod.GET)

    public String DonacionUtiles(Locale locale, Model model) {
        return "donacionUtiles";
    }
    public String DonacionAseo(Locale locale, Model model) {
        return "donacionAseo";
    }
}