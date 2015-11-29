/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package labsoft;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Usuário
 */
public class CadastroSoftwareActionForm extends org.apache.struts.action.ActionForm {
    
    private int id;
    private String nome;
    private String versao;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getVersao() {
        return versao;
    }

    public void setVersao(String versao) {
        this.versao = versao;
    }
    
    /**
     *
     */
    public CadastroSoftwareActionForm() {
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
        if ( getId() < 0) {
            errors.add("id", new ActionMessage("error.id.required"));
        }
        if (getNome() == null || getNome().length() < 1) {
            errors.add("nome", new ActionMessage("error.nome.required"));
        }
        if (getVersao() == null || getVersao().length() < 1) {
            errors.add("versao", new ActionMessage("error.versao.required"));
        }
        return errors;
    }
}
