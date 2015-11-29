<%-- 
    Document   : CadastroLaboratorioSuccess
    Created on : 07/11/2015, 02:47:04
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
        <title>Sucesso</title>
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
            .top h1 {
                width: 100%;
                height: 100%;
                margin: 10 auto;
                color: white;
            }
            .body{
                height: auto;
                line-height: auto;
                width: 990px;
                margin: auto;
                padding-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <div id="content">
            <div class="top">
                <h1><center>Software inserido com sucesso!</center></h1>
            </div>
            <div class="body">
                <html:link href="index.jsp">Voltar</html:link>
            </div>
        </div>
    </body>
</html>
