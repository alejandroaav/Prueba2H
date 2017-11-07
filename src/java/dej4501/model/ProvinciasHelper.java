/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dej4501.model;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Alejandro
 */
public class ProvinciasHelper {
    Session session = null;

    public ProvinciasHelper() {
        this.session = dej4501.srvs.NewHibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<Provincias> getAllByRegionId(int regionId){
        List<Provincias> lista = null;

        try {
            org.hibernate.Transaction tx = session.beginTransaction();
            tx.setTimeout(5);
            Query q = session.createQuery("from Provincias where region_id=:param1");
            q.setParameter("param1", regionId);
            lista = (ArrayList<Provincias>) q.list();
            tx.commit();
            //session.close();
        } catch (HibernateException ex) {
            Logger.getLogger(RegionesHelper.class.getName()).log(Level.SEVERE, "Error al obtener todas las regiones:{0}", ex.toString());
        }

        return lista;
    }
}
