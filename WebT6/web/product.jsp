<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Model.Category"%>
<html>
    <%
            ProductDAO productDAO = new ProductDAO();
            CategoryDAO categoryDAO = new CategoryDAO();
            
            String category_id = "";
            if (request.getParameter("category") != null) {
                category_id = request.getParameter("category");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
    <head>
        <title>Thực Phẩm</title>
        <script src="js/jquery.easydropdown.js"></script>
        <jsp:include page="head.jsp"></jsp:include>
        </head>
        <body>
        
        <jsp:include page="header.jsp"></jsp:include>
            <div class="mens"> 
                <div class="main">
                    <div class="wrap">
                        <div class="cont span_2_of_3">

                        <%
                            for (Product p : productDAO.getListProductByCategory(Long.parseLong(category_id))) {
                        %>
                        <div class="top-box">
                            <div class="col_1_of_3 span_1_of_3"> 
                                <a href="single.jsp?productID=<%=p.getProductID()%>">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="<%=p.getProductImage()%>" alt=""/>
                                        </div>
                                        <div class="sale-box"><span class="on_sale title_shop">New</span></div>	
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title"><%=p.getProductName()%></p>
                                                <div class="price1">
                                                    <span class="actual"><%=p.getProductPrice()%>đ</span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>				
                                    </div>
                                </a>
                            </div>
                        </div>
                        <%}%>
                    </div>
                    <div class="rsidebar span_1_of_left">
                        <h5 class="m_1">Sản phẩm</h5>
                        <%                                                
                            for (Category d : categoryDAO.getListAllCategory()) {
                        %>
                        <li><a href="product.jsp?category=<%=d.getCategoryID()%>"><%=d.getCategoryName()%></a></li>
                            <%
                                }
                            %>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>

        </div>
        <%--<jsp:include page="footer.jsp"></jsp:include>--%>

    </body>
</html>