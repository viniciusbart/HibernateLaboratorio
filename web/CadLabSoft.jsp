<%-- 
    Document   : CadLabSoft
    Created on : 11/11/2015, 00:33:07
    Author     : Usuário
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>

<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Relacao</title>
        <style>
            html {
                font-family: 'Open Sans', sans-serif;
            }
            #content {
                min-height:100%;
                position: relative;
                background-color: #A8FFC9;
            }
            .top{
                height: auto;
                margin-top: 0px;
                margin-right: auto;
                margin-left: auto;
                background-color: #2E7F4D;
            }
            .top h1 {
                width: 100%;
                height: 100%;
                color: white;
            }
            .body{
                height: auto;
                margin-top: 20px;
                margin-bottom: 20px;
                margin-right: auto;
                margin-left: auto;
            }
        </style>
    </head>
    <body>
        <div id="content">
            <div class="top">
                <h1>Relacionamento</h1>
            </div>
            <div class="body">
                <html:form action="/CadLabSoft" method="POST">
                    <table border="0" width="2">
                        <tbody>
                            <tr>
                                <td>Laboratorio</td>
                                <td>Software</td>
                            </tr>
                            <tr>
                                <td>
                                    <html:select name="CadLabSoftActionForm" property="laboratorio" >
                                        <html:optionsCollection name="CadLabSoftActionForm" property="laboratorios" label="nome" value="id"/>
                                    </html:select>
                                </td>

                                <td>
                                    <html:select name="CadLabSoftActionForm" property="software">
                                        <html:optionsCollection name="CadLabSoftActionForm" property="softwares" label="nome" value="id"/>
                                    </html:select>
                                </td>
                            </tr>
                            <tr></br></tr>
                            <tr>
                                <td colspan="2"><center><input type="submit" value="+Inserir" /></center></td>
                        </tr>
                        </tbody>
                    </table>
                </html:form>
                <br/>
            </div>
        </div>
    </body>
</html>
