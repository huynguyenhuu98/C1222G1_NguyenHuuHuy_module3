package ss11_mvc.repository.impl;

import ss11_mvc.model.Product;
import ss11_mvc.repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static final List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"Rolex",20000,"sang trọng","thụy sĩ"));
        productList.add(new Product(2,"Patek Philippe",50000,"đắt giá","thụy sĩ"));
        productList.add(new Product(3,"Hublot",15000,"trẻ trung","thụy sĩ"));
    }
    @Override
    public List<Product> display() {
        return productList;
    }

    @Override
    public void save(Product product) {
        product.setId(productList.size() + 1);
        productList.add(product);
    }

    @Override
    public List<Product> findName(String name) {
        List<Product> products = new ArrayList<>();
        for (Product product:productList) {
            if (product.getName().equals(name)) {
                products.add(product);
            }
        }
        return products;
    }
}
