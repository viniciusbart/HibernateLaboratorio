/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package labsoft;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Usuário
 */
public class CadLabSoftActionForm extends org.apache.struts.action.ActionForm {

    private List<Laboratorio> laboratorios = new ArrayList<Laboratorio>();
    private int laboratorio;

    private List<Software> softwares = new ArrayList<Software>();
    private int software;

    /**
     *
     */
    public CadLabSoftActionForm()  {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
//        if (getId() < 0) {
//            errors.add("id", new ActionMessage("error.id.required"));
//        }
//        if (getId_laboratorio() < 0) {
//            errors.add("id_laboratorio", new ActionMessage("error.id_laboratorio.required"));
//        }
//        if (getId_software() < 0) {
//            errors.add("id_software", new ActionMessage("error.id_software.required"));
//        }
        return errors;
    }

    public List<Software> getSoftwares() {
        Session session = new HibernateUtil().getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Software");
        List softwares = q.list();
        tx.commit();
        session.close();
        return softwares;
    }

    public void setSoftwares(List<Software> softwares) {
        this.softwares = softwares;
    }

    public int getSoftware() {
        return software;
    }

    public void setSoftware(int software) {
        this.software = software;
    }

    public List<Laboratorio> getLaboratorios() {
        Session session = new HibernateUtil().getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Laboratorio");
        List laboratorios = q.list();
        tx.commit();
        session.close();
        return laboratorios;
    }

    public void setLaboratorios(List<Laboratorio> laboratorios) {
        this.laboratorios = laboratorios;
    }

    public int getLaboratorio() {
        return laboratorio;
    }

    public void setLaboratorio(int laboratorio) {
        this.laboratorio = laboratorio;
    }
    
}
