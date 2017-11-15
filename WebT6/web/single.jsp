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

        <script type="text/javascript">
            $(window).load(function () {
                $("#flexiselDemo1").flexisel();
                $("#flexiselDemo2").flexisel({
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });

                $("#flexiselDemo3").flexisel({
                    visibleItems: 5,
                    animationSpeed: 1000,
                    autoPlay: false,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });

            });
        </script>
        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
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
                        <h3 class="m_3">Sản phẩm khác</h3>
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
                <div class="clear"></div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>