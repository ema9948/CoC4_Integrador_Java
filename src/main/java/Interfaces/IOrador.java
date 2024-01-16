/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import java.util.List;
import model.Orador;

/**
 *
 * @author Cristian
 */
public interface IOrador {

    public List<Orador> list(Integer page, Integer total);

    public Orador list(int id);

    public Boolean add(Orador or);

    public Boolean edit(Orador orador);

    public Boolean delete(int id);
}
