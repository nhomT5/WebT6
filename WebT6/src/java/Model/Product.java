<<<<<<< HEAD
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author HOANG
 */
public class Product {
    
    private long productID;
    private long categoryID;
    private String productName;
    private String productImage;
    private double productPrice;
    private String productDescription;
    private int tophot;
    private int topnew;

    public Product() {
    }

    public Product(long productID, long categoryID, String productName, String productImage, double productPrice, double productPromotionPrice,String productDescription, int tophot, int topnew) {
        this.productID = productID;
        this.categoryID = categoryID;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
        this.tophot = tophot;
        this.topnew = topnew;
        this.productDescription = productDescription;
    }

    public int getTophot() {
        return tophot;
    }

    public void setTophot(int tophot) {
        this.tophot = tophot;
    }

    public int getTopnew() {
        return topnew;
    }

    public void setTopnew(int topnew) {
        this.topnew = topnew;
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public long getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(long categoryID) {
        this.categoryID = categoryID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

}
=======
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author HOANG
 */
public class Product {
    
    private long productID;
    private long categoryID;
    private String productName;
    private String productImage;
    private double productPrice;
    private String productDescription;

    public Product() {
    }

    public Product(long productID, long categoryID, String productName, String productImage, double productPrice, double productPromotionPrice,String productDescription) {
        this.productID = productID;
        this.categoryID = categoryID;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
 
        this.productDescription = productDescription;
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public long getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(long categoryID) {
        this.categoryID = categoryID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

}
>>>>>>> 2f5c229dce1c879663e37cc93e666a6ab14beb54
