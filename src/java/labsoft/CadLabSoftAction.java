/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package labsoft;

import java.util.HashSet;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Usuário
 */
public class CadLabSoftAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        CadLabSoftActionForm formBean = (CadLabSoftActionForm) form;
        Session session = new HibernateUtil().getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        
        Laboratorio lab = (Laboratorio) session.createQuery("from Laboratorio where id=" + formBean.getLaboratorio()).list().iterator().next();
        Software soft = (Software) session.createQuery("from Software where id=" + formBean.getSoftware()).list().iterator().next();
        System.out.println(lab.getNome());
        System.out.println(soft.getNome());
        
        CadLabSoft rel = new CadLabSoft();
        rel.setLaboratorio(lab);
        rel.setSoftware(soft);
//        Set<Software> setSoft = new HashSet<Software>();
//        setSoft.add(soft);
//        lab.setLabSofts(setSoft);
        //soft.setLabSofts().add(lab);
        
        session.save(rel);
        //session.saveOrUpdate(soft);
        
        session.flush();
        transaction.commit();
        session.close();

        form.reset(mapping, request);
        return mapping.findForward(SUCCESS);
    }
}
