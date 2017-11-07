/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dej4501.model;

import dej4501.model.NewHibernateUtil;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Session;

/**
 *
 * @author FrancoR
 */
public class UsuariosHelper {
    Session session = null;

    public UsuariosHelper() {
        this.session = NewHibernateUtil.getSessionFactory().getCurrentSession();
    }

    public boolean crearUsuario(Usuarios newUser){
        try {
            org.hibernate.Transaction tx = session.beginTransaction();
            tx.setTimeout(5);
            Integer id = (Integer)session.save(newUser);
            tx.commit();
            return (id!=0);
        } catch (Exception ex){
            Logger.getLogger(UsuariosHelper.class.getName()).log(Level.SEVERE, "No se pudo agregar usuario a la BD:{0}", ex.toString());
            return false;
        }
    }
}
