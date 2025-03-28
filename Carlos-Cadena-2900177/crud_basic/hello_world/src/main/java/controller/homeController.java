package controller;

import org.apache.logging.log4j.message.Message;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import DataTransferObject.requestDTO;
import DataTransferObject.responseDTO;


@RestController
/*
 * se configura el mapping 
 */
@RequestMapping ("api/v1/home")
public class homeController {

    /*
     * GET: consulta informacion 
     * POST: crea un  registro 
     * PUT: actualizar el registro, todo el registro
     * PATCH: actualizacion parcial 
     * DELETE: eliminacion 
     */

     @GetMapping("/saludo")
     public String saludo1(){
         return "Hello world";
     }
     
     @GetMapping("/saludo2/{nombre}")
     public String saludo2(@PathVariable String nombre){
         return "hola "+nombre;
     }
   


     


     
}



