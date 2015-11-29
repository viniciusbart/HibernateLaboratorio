<%-- 
    Document   : CadastroSoftware
    Created on : 07/11/2015, 19:28:25
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
        <title>Cadastro de Software</title>
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
                line-height: auto;
                margin-top: 0px;
                margin-right: auto;
                margin-left: auto;
                background-color: #2E7F4D;
            }
            .top h1, p {
                width: 100%;
                height: 100%;
                margin: 10 auto;
                color: white
            }
            .body{
                height: auto;
                line-height: auto;
                margin-top: 0px;
                margin-bottom: 0px;
                margin-right: auto;
                margin-left: auto;
            }
        </style>
    </head>
    <body>
        <div id="content">
            <div class="top">
                <h1>Cadastro de Software</h1>
                <p>(*) todos os campos são de preenchimento obrigatório</p>
            </div>
            <div class="body">
                <html:form action="/CadastroSoftware" method="POST">
                    <table border="0">
                        <tbody>
                            <tr>
                                <td>id Software:</td>
                                <td><input type="text" name="id" value="" /></td>
                            </tr>
                            <tr>
                                <td>Nome:</td>
                                <td><input type="text" name="nome" value="" /></td>
                            </tr>
                            <tr>
                                <td>Versão:</td>
                                <td><input type="text" name="versao" value="" /></td>
                            </tr>
                            <tr>
                                <td colspan="2"><center><input type="submit" value="+Inserir" /></center></td>
                        </tr>
                        </tbody>
                    </table>
                </html:form>
            </div>
        </div>
    </body>
</html>
