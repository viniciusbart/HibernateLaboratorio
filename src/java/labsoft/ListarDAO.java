/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package labsoft;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Usuário
 */
public class ListarDAO {
    
    private SessionFactory factory;

    public ListarDAO() {
        this.factory = HibernateUtil.getSessionFactory();
    }
    
    public List<CadLabSoft> listarLabhasSoft() {
        Session session = factory.openSession();
        List<CadLabSoft> lst = session.createQuery("from CadLabSoft order by laboratorio").list();
        System.out.println(lst.toString());
        session.flush();
        //session.close();
        return lst;
    }
    
    public CadLabSoft selectLabhasSoftById(int id) {
        Session session = factory.openSession();
        CadLabSoft cadLabSoft = (CadLabSoft) session.createQuery("from CadLabSoft where id=" + id).list().iterator().next();
        session.flush();
        session.close();
        return cadLabSoft;
    }
    
    public void removerRelacao(CadLabSoft cadlabsoft) {
        Session session = factory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(cadlabsoft);
        session.flush();
        transaction.commit();
        session.close();
    }
    
    
}
