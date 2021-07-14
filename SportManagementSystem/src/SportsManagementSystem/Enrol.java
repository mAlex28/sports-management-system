/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SportsManagementSystem;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class Enrol {
    //check if the student is already enrolled
    public static boolean isEnrolled(String spId){
        PreparedStatement pst;
        ResultSet rs;
        boolean id_exist = false;
        
        String query = "SELECT * FROM `Enrolled` WHERE `SpId` = ?";
        
        try {
            pst = DbConnection.getConnection().prepareStatement(query);
            pst.setString(1, spId);
            rs = pst.executeQuery();
        
        
            if(rs.next()){
                id_exist = true;
                JOptionPane.showMessageDialog(null, "You are already enrolled.", "Enrolled already", 2);
            }
        } 
        
        catch (SQLException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id_exist;
    }  
}
