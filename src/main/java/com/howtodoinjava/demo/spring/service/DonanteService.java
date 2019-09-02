/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.howtodoinjava.demo.spring.service;
import java.util.List;
import com.howtodoinjava.demo.spring.model.Donante;
/**
 *
 * @author pc
 */
public interface DonanteService {
   void save(Donante donante);

   List<Donante> list();
}