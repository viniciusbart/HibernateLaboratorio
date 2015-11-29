<%-- 
    Document   : Listar
    Created on : 22/11/2015, 17:54:36
    Author     : Usuário
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Laboratórios - EEP</title>
        <style>
            html {
                font-family: 'Open Sans', sans-serif;
            }
            #content {
                min-height:100%;
                position: relative;
                border-style: groove;
                background: -webkit-linear-gradient(left top, #99ff99, #ccffcc); /* For Safari 5.1 to 6.0 */
                background: -o-linear-gradient(bottom right, #99ff99, #ccffcc); /* For Opera 11.1 to 12.0 */
                background: -moz-linear-gradient(bottom right, #99ff99, #ccffcc); /* For Firefox 3.6 to 15 */
                background: linear-gradient(to bottom right, #99ff99, #ccffcc); /* Standard syntax (must be last) */
            }
            .top{
                height: 150px;
                line-height: 150px;
                margin-top: 0px;
                margin-right: auto;
                margin-left: auto;
                background-color: #2E7F4D;
            }
            .top h3{
                font-size: 44px;
                width: 100%;
                height: 100%;
                margin: 0 auto;
                color: white;
                text-shadow: 2px 2px 4px #000000;
                
            }
            .body{
                background-color: #A8FFC9;
                height: auto;
                width: fit-content;
                margin: 30px 20px;
                padding: 10px 10px 10px 10px;
                border-radius: 8px;
                border: 2px solid #339900;
            }
            .body table{
                margin-top: 20px;
                margin-bottom: 20px;
                font-size: 13 px;
            }
            .footer{
                //position:absolute;
                bottom:0;
                width:100%;
                height: 125px;
                line-height: 125px;
                background-color: #2E7F4D;
                font-size: 38px;
                font-family: sans-serif;
                color:#FFF;
            }
            .footer li {
                float: left;
                margin-right:  25px;
                margin-left: 25px;
            }
            .footer a{color: white; text-shadow: 2px 2px 4px #000000;}
            .footer a:hover{color:#77ff99; 
                            text-decoration: dotted;
                            border-radius: 8px;
                            border: 2px solid #73AD21; }
            </style>
        </head>
        <body>
            <div id="content">
            <div class="top">
                <h3><center>Relação de Softwares instalados nos Laboratórios da EEP</center></h3>
            </div>
            <div class="body">
                <logic:present name="ListarActionForm" property="lista">
                    <table border="0">
                        <thead>
                            <tr>
                                <th>LABORATORIO</th>
                                <th>SOFTWARE</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <logic:iterate name="ListarActionForm" property="lista" id="cadlabsoft">
                                <tr>
                                    <td><bean:write name="cadlabsoft" property="laboratorio.nome"/></td>
                                    <td><bean:write name="cadlabsoft" property="software.nome"/></td>
                                    <td><a href="Remover.do?id=<bean:write name="cadlabsoft" property="id"/>">Remover</a></td>
                                </tr>    
                            </logic:iterate>
                        </tbody>
                    </table>
                </logic:present>
            </div>
            <div class="footer">
                <ul>
                    <li><html:link href="CadastroLaboratorio.jsp">+Add Laboratorio</html:link></li>
                    <li><html:link href="CadastroSoftware.jsp">+Add Software</html:link></li>
                    <li><html:link href="CadLabSoft.jsp">+Add Relação</html:link></li>
                </ul>
            </div>
        </div>
    </body>
</html>
