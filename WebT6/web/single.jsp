<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Model.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Model.Cart"%>
<!DOCTYPE HTML>
<html>
    <%
        ProductDAO productDAO = new ProductDAO();
        CategoryDAO categoryDAO = new CategoryDAO();
        Product product = new Product();
        String productID = "";
        if (request.getParameter("productID") != null) {
            productID = request.getParameter("productID");
            product = productDAO.getProduct(Long.parseLong(productID));
        }
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
    %>
    <head>
        <title><%=product.getProductName()%></title>
        <jsp:include page="head.jsp"></jsp:include>
        </head>
        <body>

        <jsp:include page="header.jsp"></jsp:include>
            <div class="mens">    
                <div class="main">
                    <div class="wrap">
                        <div class="cont span_2_of_3">
                            <div class="grid images_3_of_2">
                                <img class="" src="<%=product.getProductImage()%>" class="img-responsive" />
                            <div class="clearfix"></div>
                        </div>
                        <div class="desc1 span_3_of_2">
                            <h3 class="m_3"><%=product.getProductName()%> </h3>
                            <p class="m_5"><%=product.getProductPrice()%> đ</p>
                            <div class="btn_form">
                                <form>
                                    <input type="submit" value="buy" title="">
                                </form>
                            </div>
                            <p class="m_text2"><%=product.getProductDescription()%></p>
                        </div>
                        <div class="clear"></div>	
                        <div class="clients">
                            <h3 class="m_3">10 Other Products in the same category</h3>
                            <ul id="flexiselDemo3">
                                <li><img src="images/s5.jpg" /><a href="#">Category</a><p>Rs 600</p></li>
                                <li><img src="images/s6.jpg" /><a href="#">Category</a><p>Rs 850</p></li>
                                <li><img src="images/s7.jpg" /><a href="#">Category</a><p>Rs 900</p></li>
                                <li><img src="images/s8.jpg" /><a href="#">Category</a><p>Rs 550</p></li>
                                <li><img src="images/s9.jpg" /><a href="#">Category</a><p>Rs 750</p></li>
                            </ul>
                        </div>
                    </div>
                    <div class="rsidebar span_1_of_left">
                        <h5 class="m_1">Sản phẩm</h5>
                        <%                                                for (Category d : categoryDAO.getListAllCategory()) {
                        %>
                        <li><a href="product.jsp?category=<%=d.getCategoryID()%>"><%=d.getCategoryName()%></a></li>
                            <%
                                }
                            %>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>