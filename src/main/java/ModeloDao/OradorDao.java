/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDao;

import Interfaces.IOrador;
import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Orador;

/**
 *
 * @author Cristian
 */
public class OradorDao implements IOrador {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Orador or = new Orador();

    @Override
    public List<Orador> list(Integer page, Integer total) {

        List<Orador> list = new ArrayList<>();
        String sql = "SELECT * FROM orador LIMIT  " + (page - 1) + "," + total;
        try {

            con = cn.geConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Orador orador = new Orador();
                orador.setId(rs.getInt("id"));
                orador.setNombre(rs.getString("nombre"));
                orador.setApellido(rs.getString("apellido"));
                orador.setTema(rs.getString("tema"));
                list.add(orador);
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
        };

        return list;

    }

    @Override
    public Orador list(int id) {
        String sql = "SELECT * FROM orador WHERE id=" + id;
        Orador orador = new Orador();
        try {

            con = cn.geConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                orador.setId(rs.getInt("id"));
                orador.setNombre(rs.getString("nombre"));
                orador.setApellido(rs.getString("apellido"));
                orador.setTema(rs.getString("tema"));
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());

        }
        return orador;
    }

    @Override
    public Boolean add(Orador or) {
        System.out.println(or.toString());
        String sql = "insert into orador(NOMBRE,APELLIDO,TEMA)values('" + or.getNombre() + "','" + or.getApellido() + "','" + or.tema + "')";

        try {
            con = cn.geConnection();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
        }

        return true;
    }

    @Override
    public Boolean edit(Orador orador) {
        String sql = "UPDATE orador SET  nombre='" + orador.getNombre() + "', apellido='" + orador.getApellido() + "', tema='" + orador.tema + "' where id=" + orador.getId();

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
    public Boolean delete(int id) {
        String sql = "DELETE   FROM  orador WHERE id=" + id;
        try {
            con = cn.geConnection();
            ps = con.prepareCall(sql);
            ps.executeUpdate();
            con.close();
            return true;
        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
        }
        return false;
    }

}
