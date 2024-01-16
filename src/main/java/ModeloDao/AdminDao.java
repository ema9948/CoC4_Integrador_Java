/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDao;

import Interfaces.IAdmin;
import conexion.Conexion;
import de.mkammerer.argon2.Argon2;
import de.mkammerer.argon2.Argon2Factory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Admin;
import model.Orador;

/**
 *
 * @author Cristian
 */
public class AdminDao implements IAdmin {

    Argon2 argon2 = Argon2Factory.create(Argon2Factory.Argon2Types.ARGON2id, 32, 64);

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Admin admin = new Admin();

    @Override
    public boolean login(String email, String password) {

        String sql = "select * from admin where  email=" + email;

        try {

            con = cn.geConnection();
            ps = con.prepareStatement("SELECT * FROM admin WHERE email=? ");
            ps.setString(1, email);
            rs = ps.executeQuery();

            if (rs.next()) {
                admin.setPassword(rs.getString("password"));
                return argon2.verify(rs.getString("password"), password.toCharArray());
            }

            return false;
        } catch (Exception e) {
        }
        System.out.println();
        return true;
    }

}
