/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import java.util.List;
import model.Ticket;

/**
 *
 * @author Cristian
 */
public interface ITicket {

    public List<Ticket> list(int page, int total);

    public Ticket list(int id);

    public boolean pago(Ticket ticket);

    public boolean edit(Ticket ticket);

    public boolean delete(int id);
}
