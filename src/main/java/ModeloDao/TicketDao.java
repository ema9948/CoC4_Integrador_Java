/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package ModeloDao;

import Interfaces.ITicket;
import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Orador;
import model.Ticket;

/**
 *
 * @author Cristian
 */
public class TicketDao implements ITicket {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Ticket ticket = new Ticket();

    @Override
    public boolean pago(Ticket ticket) {

        String sql = "insert into ticket(nombre,apellido,email,cantidad,precio,categoria)values('" + ticket.getNombre() + "','" + ticket.getApellido() + "','" + ticket.getEmail() + "','" + ticket.getCantidad() + "','" + ticket.getPrecio() + "','" + ticket.getCategoria() + "')";

        System.out.println(ticket);
        System.out.println(sql);
        try {
            con = cn.geConnection();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
        }
        return false;

    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE   FROM  ticket WHERE id=" + id;
        try {
            con = cn.geConnection();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
        }
        return false;
    }

    @Override
    public List<Ticket> list(int page, int total) {

        List<Ticket> list = new ArrayList<>();
        String sql = "SELECT * FROM ticket LIMIT  " + (page - 1) + "," + total;
        try {

            con = cn.geConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Ticket ticket = new Ticket();
                ticket.setId(rs.getInt("id"));
                ticket.setNombre(rs.getString("nombre"));
                ticket.setApellido(rs.getString("apellido"));
                ticket.setEmail(rs.getString("email"));
                ticket.setCantidad(rs.getInt("cantidad"));
                ticket.setCategoria(rs.getString("categoria"));
                ticket.setPrecio(rs.getDouble("precio"));
                list.add(ticket);
            }
            return list;
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
        };

        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Ticket list(int id) {
        String sql = "SELECT * FROM ticket WHERE id=" + id;
        Ticket ticket = new Ticket();
        try {

            con = cn.geConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                ticket.setId(rs.getInt("id"));
                ticket.setNombre(rs.getString("nombre"));
                ticket.setApellido(rs.getString("apellido"));
                ticket.setEmail(rs.getString("email"));
                ticket.setCantidad(rs.getInt("cantidad"));
                ticket.setCategoria(rs.getString("categoria"));
                ticket.setPrecio(rs.getDouble("precio"));
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());

        }
        return ticket;
    }

    @Override
    public boolean edit(Ticket ticket) {
        String sql = "UPDATE ticket SET nombre='" + ticket.getNombre() + "', apellido='" + ticket.getApellido() + "', email='" + ticket.getEmail() + "', categoria='" + ticket.getCategoria() + "', cantidad='" + ticket.getCantidad() + "', precio='" + ticket.getPrecio() + "' where id=" + ticket.getId();

        System.out.println(sql);

        try {
            con = cn.geConnection();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
        }
        return false;
    }

}
