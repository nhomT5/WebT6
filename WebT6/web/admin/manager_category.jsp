<%-- 
    Document   : Manager-category
    Created on : Nov 8, 2017, 6:13:38 PM
    Author     : erago
--%>

<%@page import="Model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lí danh mục sản phẩm</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
        <script src="${root}/js/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <%
            CategoryDAO cate = new CategoryDAO();
            ArrayList<Category> listCate = cate.getListCategory();
            %>
        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Danh mục</h3>
                    <a href="insert_category.jsp">Thêm danh mục</a>

                    <table class="data">
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">ID</th>
                            <th class="data">Tên danh mục</th>
                            <th class="data">Mô tả</th>
                            <th class="data" width="75px">Thao tác</th>
                            
                        </tr>
                    <%
                        int i=0;
                        for(Category category : listCate){
                        i++;
                    %>
                    
                       
                        <tr class="data">
                            
                            <td class="data" width="30px"><%=i%></td>
                            <td class="data"><%=category.getCategoryID()%></td>
                            <td class="data"><%=category.getCategoryName()%></td>
                            <td class="data"><%=category.getMetaTitle()%></td>
                            
                            <td class="data" width="75px">
                        <center>
                            <a href="#">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                            <a href="#">Xóa</a>
                        </center>
                        </td>
                        </tr>
                        <%}%>
                    </table>

                
                </div>
                    <div class="clear"></div>
                    <jsp:include page="footer.jsp"></jsp:include> 

            </div>

        
   

</body>
</html>
