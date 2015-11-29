/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package labsoft;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Usuário
 */
public class ListarActionForm extends org.apache.struts.action.ActionForm {
    
    private List<CadLabSoft> lista;
    
    /**
     *
     */
    public ListarActionForm() {
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
        
        return errors;
    }

    public List<CadLabSoft> getLista() {
        return lista;
    }

    public void setLista(List<CadLabSoft> lista) {
        this.lista = lista;
    }
}
