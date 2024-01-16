/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Cristian
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Ticket {

    public int id;
    public String nombre;
    public String apellido;
    public String email;
    public Integer cantidad;
    public String categoria;
    public Double precio;
}
